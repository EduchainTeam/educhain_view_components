# frozen_string_literal: true

class Educhain::Navigation::Component < Educhain::BaseComponent
  def initialize(
    # :logo_path, :string, default: "logo/educhain.svg"

    logo_path: "educhain/view_components/logo/educhain.svg",
    user_label: :user_label,
    # items: default items set in navigation

    items: [
      {
        key: "item_first",
        route: "#",
        icon: "inbox-line",
        position: 10
      },
      {
        key: "item_second(active)",
        route: "/lookbook/preview/educhain/navigation/default",
        icon: "price-tag-3-line",
        position: 20,
        children: [
          {
            key: "child_first(current)_of_item_second",
            route: "#",
            match_path: -> { _1.start_with?("/lookbook/preview/educhain/navigation/default") },
            position: 0
          },
          {
            key: "child_second_of_item_second",
            route: "#",
            position: 10
          }
        ]
      },

      {
        key: "item_third",
        route: "#",
        icon: "stack-line",
        position: 40
      }
    ]
  )
    @logo_path = logo_path
    @user_label = user_label
    @items = items.map do |attrs|
      children = attrs[:children].to_a.map { MenuItem.new(**_1, top_level: false) }
      MenuItem.new(**attrs, children:, top_level: true)
    end
  end

  def items
    @items.sort_by(&:position)
  end

  class MenuItem
    # @!attribute [r] key
    #  @return [String] a unique identifier for this item
    attr_reader :key

    # @!attribute [r] icon
    #  @return [String] icon from RemixIcon to use for this item
    attr_reader :icon

    # @!attribute [r] position
    #  @return [Integer] the position of this item relative to its parent
    attr_reader :position

    # @!attribute [r] route
    # @return [String] the route to use for this item.
    # @see #path
    attr_reader :route

    attr_reader :children, :top_level

    def initialize(
      key:,
      position:,
      route:,
      match_path: nil,
      icon: nil,
      children: [],
      top_level: true
    )
      @key = key
      @icon = icon
      @position = position,
      @children = children,
      @top_level = top_level,
      @route = route
      @match_path = match_path
    end

    def name
      key.to_s.humanize
    end

    # @return [Boolean] whether this item has any children
    def children?
      @children.any?
    end

    # @return [String] the path for this item
    def path
      route
    end

    # Returns whether the item should be marked as current
    #
    # An item is considered the current one if its base path (that is, the path
    # without any query parameters) matches the given full path.
    #
    # @param fullpath [String] the full path of the current request
    # @return [Boolean]
    def current?(fullpath)
      path == fullpath.gsub(/\?.*$/, "")
    end

    # Returns whether the item should be marked as active
    #
    # An item is considered active when it is the current item or any of its
    # children is active.
    #
    # @param fullpath [String] the full path of the current request
    # @return [Boolean]
    # @see #current?
    def active?(fullpath)
      current?(fullpath) ||
        @match_path&.call(fullpath) ||
        children.any? { |child| child.active?(fullpath) }
    end
  end
end
