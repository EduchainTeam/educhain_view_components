# frozen_string_literal: true

class Educhain::Forms::SearchField::Component < Educhain::BaseComponent
    def initialize(**attributes)
      @attributes = attributes
      @attributes[:type] ||= :search
      @attributes[:class] = "search-cancel:appearance-none peer !px-10 #{@attributes[:class]}"
      @attributes[:"data-#{stimulus_id}-target"] = "input"
    end
  end