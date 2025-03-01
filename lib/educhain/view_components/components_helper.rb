module Educhain
  module ViewComponents
    module ComponentsHelper
      def component(name, **options)
        component_class = Educhain::ViewComponents::ComponentsRegistry.new[name]
        component = component_class.new(**options)
        component
      end
    end
  end
end
