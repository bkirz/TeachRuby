module TeachRuby

  # This module contains methods added to all Objects for use with
  # TeachRuby code transformation.
  module ObjectMixin

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
        self.send(method, *args, &block)
      elsif Kernel.respond_to? method
        Kernel.send(method, *args, &block)
      else
        obj, rest = args[0], args[1..-1]
        if obj.nil?
          # TODO: Better error reporting
          raise ArgumentError, "Oh noes!"
        else
          obj.send(method, *rest, &block)
        end
      end
    end

    alias_method :__p, :__procedural_function_call
  end
end

class Object
  include TeachRuby::ObjectMixin
end
