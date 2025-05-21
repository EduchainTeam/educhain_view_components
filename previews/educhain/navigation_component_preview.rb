class Educhain::NavigationComponentPreview < ViewComponent::Preview
  CUSTOM_ITEMS = [
    {
      key: "third",
      route: "/lookbook/preview/educhain/navigation/overview",
      icon: "battery-fill",
      position: 30,
      children: [
        {
          key: "child_1",
          route: "#",
          position: 0
        },
        {
          key: "child_2",
          route: "#",
          position: 10
        },
        {
          key: "child_3",
          route: "#",
          position: 20
        },
        {
          key: "child_4",
          route: "#",
          match_path: -> { _1.start_with?("/lookbook/preview/educhain/navigation/overview") },
          position: 30
        }
      ]
    },
    {
      key: "first",
      route: "/lookbook/preview/educhain/navigation/example",
      icon: "bell-line",
      position: 10,
      children: [
        {
          key: "child_first_of_item_second",
          route: "#",
          match_path: -> { _1.start_with?("/lookbook/preview/educhain/navigation/example") },
          position: 20
        }
      ]
    },

    {
      key: "second",
      route: "#",
      icon: "bookmark-2-line",
      position: 20
    }
  ]
  # @label An example of custom logo and items
  def overview(
    logo_path: "educhain/view_components/logo/gml.svg",
    user_label: "admin@example.com"
  )
    render_with_template(locals: { logo_path:, user_label:, items: CUSTOM_ITEMS })
  end
  # @default
  def default
    render(Educhain::Navigation::Component.new)
  end
end
