# frozen_string_literal: true

class Educhain::Navbar::Component < Educhain::BaseComponent
  def initialize(brand_logo_url: nil, current_user: nil, profile_url: nil, nav_links: [], menu_items: [], **attrs)
    @brand_logo_url = brand_logo_url
    @current_user = current_user
    @profile_url = profile_url
    @nav_links = nav_links
    @menu_items = menu_items
    @attrs = attrs
    @attrs[:class] = [
      "flex justify-between items-center gap-2.5 h-14 px-8 py-4 bg-gray-50",
      @attrs[:class]
    ].join(" ")
  end
end
