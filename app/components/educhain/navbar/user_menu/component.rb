# frozen_string_literal: true

class Educhain::Navbar::UserMenu::Component < Educhain::BaseComponent
  def initialize(name:, avatar_url: nil, items: [], **attrs)
    @name = name
    @avatar_url = avatar_url
    @items = items
    @attrs = attrs

    @attrs[:"data-controller"] = [stimulus_id, attrs[:"data-controller"]].compact.join(" ")
    @attrs[:"data-action"] = [
      "turbo:before-cache@window->#{stimulus_id}#close",
      "mouseleave->#{stimulus_id}#mouseLeave",
      "mouseenter->#{stimulus_id}#mouseEnter",
      attrs[:"data-action"]
    ].compact.join(" ")
  end

  private

  def items
    @items.sort_by { |item| item[:position] }
  end
end