# frozen_string_literal: true

module Educhain
  class BaseComponent < ViewComponent::Base
    include Educhain::ViewComponents::VoidElementsHelper

    def icon_tag(name, **attrs)
      render Educhain::Icon::Component.new(name:, **attrs)
    end

    def self.stimulus_id
      @stimulus_id ||= name.underscore
        .sub(/^educhain\/(.*)\/component$/, '\1')
        .gsub("/", "--")
        .tr("_", "-")
    end

    delegate :stimulus_id, to: :class
  end
end
