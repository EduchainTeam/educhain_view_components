require "view_component"
require "view_component/version"
require "importmap-rails"

module Educhain
  module ViewComponents
    class Engine < ::Rails::Engine
      isolate_namespace Educhain::ViewComponents

      ActiveSupport::Inflector.inflections { |inflect| inflect.acronym 'UI' }

      config.view_component.preview_paths << Educhain::ViewComponents::Engine.root.join("previews").to_s

      initializer "educhain-view-components.assets" do |app|
        app.config.assets.precompile += %w[educhain_view_components_manifest]
      end

      initializer "educhain-view-components.importmap", before: "importmap" do |app|
        app.config.importmap.paths << root.join("config/importmap.rb")
        app.config.importmap.cache_sweepers << root.join("app/assets/javascripts")      
      end
    end
  end
end
