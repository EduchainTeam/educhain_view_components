module Educhain
  module ViewComponents
    module ComponentsHelper
      def component(key)
        Educhain::ViewComponents::ComponentsRegistry.new[key]
      end
    end
  end
end
