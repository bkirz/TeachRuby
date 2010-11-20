module TeachRuby
  module Config
    DEFAULT_FILENAME = 'teachruby.yml'.freeze
    KEYS = %w{whitelist blacklist}.freeze
    CONFIG = Hash.new

    def self.read_config_file(filename = DEFAULT_FILENAME)
      require 'yaml'
      
      hash = YAML::load_file filename
      process_config hash
    end

    def self.process_config(hash)
      extra_keys = hash.keys - KEYS
      raise "Invalid config keys: #{extra_keys.join(', ')}" unless extra_keys.empty?
      if hash.has_key? 'whitelist'
        raise "Config can only have one of blacklist and whitelist" if hash.has_key? 'blacklist'
        CONFIG[:class_validation_mode] = :whitelist
        CONFIG[:classes] = hash['whitelist']
      elsif hash.has_key? 'blacklist'
        CONFIG[:class_validation_mode] = :blacklist
        CONFIG[:classes] = hash['blacklist']
      else
        # TODO: Default whitelist
      end
      hash
    end

    def self.value_forbidden?(value)
      class_listed = !((CONFIG[:classes] & value.class.ancestors.map(&:to_s)).empty?)
      (CONFIG[:class_validation_mode] == :whitelist) ^ class_listed
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

    # Used to intelligently dispatch procedural-style method calls.
    #
    # If called in a context where an implicit method call would succeed,
    # the method call is invoked as:
    # 
    #       self.method(*args, &block)
    #
    # If an implicit Kernel method call is made, the following method 
    # is invoked: 
    #
    #       Kernel.method(*args, &block)
    #
    # If an implicit call would fail, use the first argument of the method
    # call as the callee, removing it from the list of arguments.  That is,
    # if args = [arg0, arg1, arg2, ...], the following method is invoked:
    #
    #       arg0.method(arg1, arg2, ..., &block)
    def __procedural_function_call(method, *args, &block)
      if self.respond_to? method
        __v(self.send(method, *args, &block))
      elsif Kernel.respond_to? method
        __v(Kernel.send(method, *args, &block))
      else
        obj, rest = args[0], args[1..-1]
        if obj.nil?
          # TODO: Better error reporting
          raise ArgumentError, "Oh noes!"
        else
          __v(obj.send(method, *rest, &block))
        end
      end
    end

    def __reverse_procedural_function_call(method, *args, &block)
      obj, rest = args[0], args[1..-1]
      if (not obj.nil?) and (obj.respond_to? method)
	__v(obj.send(method, *rest, &block))
      elsif self.respond_to? method
        __v(self.send(method, *args, &block))
      elsif Kernel.respond_to? method
        __v(Kernel.send(method, *args, &block))
      else
	raise "TeachRuby: no such method " << method.to_s
      end
    end

    alias_method :__p, :__reverse_procedural_function_call

  end
end

################
class Object
  include TeachRuby::ObjectMixin
end

TeachRuby::Config::read_config_file
