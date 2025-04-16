# frozen_string_literal: true

class Educhain::Navbar::UserMenu::Component < Educhain::BaseComponent
  renders_many :items, "MenuItem"

  def initialize(
    name:, 
    avatar_url: nil, 
    items: [
      {
        key: "item_first",
        route: "#",
        icon: "inbox-line",
        position: 0
      },
      {
        key: "item_second",
        route: "#",
        position: 1
      }
    ],
    **attrs
    )

    @name = name
    @avatar_url = avatar_url
    @menu_items = MenuItem.new(**attrs)
    @items = items.map do |attrs|
      MenuItem.new(**attrs)
    end
    @attrs = attrs

    @attrs[:"data-controller"] = [stimulus_id, attrs[:"data-controller"]].compact.join(" ")
    @attrs[:"data-action"] = [
      "turbo:before-cache@window->#{stimulus_id}#close",
      attrs[:"data-action"]
    ].compact.join(" ")
  end

  def items
    @items.sort_by(&:position)
  end

  class MenuItem
    attr_reader :key, :icon, :position, :route

    def initialize(key:, route:, position:, icon: nil)
      @key = key
      @position = position
      @route = route
      @icon = icon
    end

    def name
      key.to_s.humanize
    end

    def path
      route
    end

    def current?(fullpath)
      path == fullpath.gsub(/\?.*$/, "")
    end

    def active?
      current?(fullpath)
    end
  end
end