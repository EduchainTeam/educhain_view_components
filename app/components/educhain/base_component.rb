# frozen_string_literal: true

module Educhain
  class BaseComponent < ViewComponent::Base
    include Educhain::ViewComponents::VoidElementsHelper
    
    def self.stimulus_id
      @stimulus_id ||= name.underscore
        .sub(/^educhain\/(.*)\/component$/, '\1')
        .gsub("/", "--")
        .tr("_", "-")
    end

    delegate :stimulus_id, to: :class
  end
end
