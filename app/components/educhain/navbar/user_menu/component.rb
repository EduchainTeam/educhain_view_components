# frozen_string_literal: true

class Educhain::Navbar::UserMenu::Component < Educhain::BaseComponent
  renders_many :items, types: { item: "MenuItem" }

  def initialize(name:, avatar_url: nil, **attrs)
    @name = name
    @avatar_url = avatar_url
    @attrs = attrs

    @attrs[:"data-controller"] = [stimulus_id, attrs[:"data-controller"]].compact.join(" ")
    @attrs[:"data-action"] = [
      "turbo:before-cache@window->#{stimulus_id}#close",
      attrs[:"data-action"]
    ].compact.join(" ")
  end

  class MenuItem < ViewComponent::Base
    def initialize(label:, href:, button: false)
      @label = label
      @href = href
      @button = button
    end
  end  
end