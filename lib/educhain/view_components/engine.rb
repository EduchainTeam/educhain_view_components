require "view_component"
require "view_component/version"
require "importmap-rails"
require_relative "components_registry"
require_relative "components_helper"

module Educhain
  module ViewComponents
    class Engine < ::Rails::Engine
      isolate_namespace Educhain::ViewComponents

      ActiveSupport::Inflector.inflections { |inflect| inflect.acronym "UI" }

      config.view_component.preview_paths << Educhain::ViewComponents::Engine.root.join("previews").to_s

      initializer "educhain-view-components.assets" do |app|
        app.config.assets.precompile += %w[educhain_view_components_manifest]
      end

      initializer "educhain-view-components.importmap", before: "importmap" do |app|
        app.config.importmap.paths << root.join("config/importmap.rb")
        app.config.importmap.cache_sweepers << root.join("app/javascript")
      end

      initializer "educhain_view_components.importmap.assets" do |app|
        app.config.assets.paths += [
          Educhain::ViewComponents::Engine.root.join("app/javascript"),
          Educhain::ViewComponents::Engine.root.join("app/components")
        ]
      end

      initializer "educhain_view_components_helper" do
        ActiveSupport.on_load(:action_controller) do
          helper Educhain::ViewComponents::ComponentsHelper
        end
      end

      initializer "educhain_view_components.components_registry" do
        config.registry = Educhain::ViewComponents::ComponentsRegistry.new

        Dir[File.join(root, "app/components/educhain/*/component.rb")].each do |file|
          component_name = File.basename(File.dirname(file)).to_s

          class_name = "Components::Educhain::#{component_name.to_s.classify}::Component"

          config.registry[component_name] = class_name
        end
      end
    end
  end
end
