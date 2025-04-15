# frozen_string_literal: true

class Educhain::NavbarComponentPreview < ViewComponent::Preview
  UserStub = Struct.new(:name, :avatar_url, keyword_init: true)

  def overview
    render Educhain::Navbar::Component.new(
      brand_logo_url: "educhain/view_components/logo.svg", 
      current_user: nil, 
      profile_url: "#",
      nav_links: default_nav_links
    )
  end

  def with_user_without_avatar
    current_user = UserStub.new(name: "Andrey", avatar_url: nil)

    render Educhain::Navbar::Component.new(
      brand_logo_url: "educhain/view_components/logo.svg", 
      current_user: current_user,
      profile_url: "#",
      nav_links: default_nav_links
    )
  end

  def with_user_with_avatar
    current_user = UserStub.new(name: "Andrey", avatar_url: "educhain/view_components/test-avatar.png")
    
    render Educhain::Navbar::Component.new(
      brand_logo_url: "educhain/view_components/logo.svg",
      current_user: current_user,
      profile_url: "#",
      nav_links: default_nav_links
    )
  end

  private

  # Returns an array of default navigation links for the navbar component.
  def default_nav_links
    [{ name: "Каталог", href: "#" }, { name: "Контакты", href: "#" }, { name: "О нас", href: "#" }]
  end
end