require "view_component"
require "view_component/version"

module Educhain
  module ViewComponents
    class Engine < ::Rails::Engine
      isolate_namespace Educhain::ViewComponents

      ActiveSupport::Inflector.inflections { |inflect| inflect.acronym 'UI' }

      config.view_component.preview_paths << Educhain::ViewComponents::Engine.root.join("previews").to_s

      initializer "educhain-view-components.assets" do |app|
        app.config.assets.precompile += %w[educhain_view_components_manifest]
      end
    end
  end
end
