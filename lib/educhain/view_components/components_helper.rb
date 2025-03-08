module Educhain
  module ViewComponents
    module ComponentsHelper
      def component(key)# , **options)
        component_class = Educhain::ViewComponents::ComponentsRegistry.new[key]
        component_class
        # byebug
        # component = component_class.new(**options)
        # component
      end
    end
  end
end
