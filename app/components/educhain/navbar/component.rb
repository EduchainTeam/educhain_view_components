# frozen_string_literal: true

class Educhain::Navbar::Component < Educhain::BaseComponent
  def initialize(brand_logo_url: nil, current_user: nil, avatar_url: nil, profile_url: nil, nav_links: [], **attrs)
    @brand_logo_url = brand_logo_url
    @current_user = current_user
    @avatar_url = avatar_url
    @profile_url = profile_url
    @nav_links = nav_links
    @attrs = attrs
  end
end
