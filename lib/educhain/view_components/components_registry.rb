module Educhain
  module ViewComponents
    class ComponentsRegistry
      ComponentNotFoundError = Class.new(NameError)

      def initialize
        @components = {}
      end

      def []=(key, value)
        @components[key] = value
      end

      def [](key)
        if @components[key]
          @components[key].constantize
        else
          infer_constant_from(key)
        end
      end

      private

      def infer_constant_from(key)
        value = "educhain/#{key}/component".classify.constantize
        value
      rescue NameError
        raise ComponentNotFoundError, "Component #{key} not found"
      end
    end
  end
end
