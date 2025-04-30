# frozen_string_literal: true

class Educhain::Card::Course::Component < Educhain::BaseComponent
  def initialize(items:, price:, cart_url:, favorite_url:, **attrs)
    @items = items
    @price = price
    @cart_url = cart_url
    @favorite_url = favorite_url
    @attrs = attrs

    @attrs[:class] = [
      "flex text-sm items-center",
      @attrs[:class]
    ].compact.join(" ")
  end
end