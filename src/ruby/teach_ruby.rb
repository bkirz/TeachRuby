module TeachRuby
  module Config
    DEFAULT_FILENAME = 'teachruby.yml'.freeze
    KEYS = %w{class_whitelist class_blacklist method_blacklist}.freeze
    CONFIG = Hash.new

    def self.read_config_file(filename = DEFAULT_FILENAME)
      require 'yaml'
      
      hash = YAML::load_file filename
      process_config hash
    end

    def self.process_config(hash)
      extra_keys = hash.keys - KEYS
      raise "Invalid config keys: #{extra_keys.join(', ')}" unless extra_keys.empty?

      # Read class whitelist/blacklist from hash
      if hash.has_key? 'class_whitelist'
        raise "Config can only have one of blacklist and whitelist" if hash.has_key? 'blacklist'
        CONFIG[:class_validation_mode] = :whitelist
        CONFIG[:classes] = hash['class_whitelist']
      elsif hash.has_key? 'blacklist'
        CONFIG[:class_validation_mode] = :blacklist
        CONFIG[:classes] = hash['class_blacklist']
      else
        # TODO: Default whitelist
      end

      # Read method blacklist
      CONFIG[:method_blacklist] = hash['method_blacklist'].map(&:to_sym)
      
      hash.freeze
    end

    def self.value_forbidden?(value)
      class_listed = !((CONFIG[:classes] & value.class.ancestors.map(&:to_s)).empty?)
      (CONFIG[:class_validation_mode] == :whitelist) ^ class_listed
    end

    def self.method_forbidden?(value)
      CONFIG[:method_blacklist].include? value
    end
  end

  # This module contains methods added to all Objects for use with
  # TeachRuby code transformation.
  module ObjectMixin

    # Used to check if a value is of a type which has been blacklisted
    # values consist of: literals, hashes, arrays, method return vals
    def __value_forbidden_check(value)
      raise TypeError, "TeachRuby: Value #{value.to_s} has forbidden type #{value.class.to_s}" if Config.value_forbidden? value
      value
    end

    alias_method :__v, :__value_forbidden_check

    # Dispatches procedural-style method calls.
    def __procedural_function_call(method, *args, &block)
      raise "Function call forbidden: #{method}" if Config.method_forbidden?(method)
      
      obj, rest = args[0], args[1..-1]
      if (not obj.nil?) and (obj.respond_to? method)
	      __v(obj.send(method, *rest, &block))
      elsif self.respond_to? method, true
        __v(self.send(method, *args, &block))

      else
        raise "TeachRuby: no such function " << method.to_s
      end
    end

    alias_method :__p, :__procedural_function_call

  end
end

################
class Object
  include TeachRuby::ObjectMixin
end

TeachRuby::Config::read_config_file
