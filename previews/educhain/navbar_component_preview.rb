# frozen_string_literal: true

class Educhain::NavbarComponentPreview < ViewComponent::Preview
  UserStub = Struct.new(:name)

  def overview
    render Educhain::Navbar::Component.new(
      brand_logo_url: "educhain/view_components/logo.svg", 
      current_user: nil,
      avatar_url: nil, 
      profile_url: "#",
      nav_links: default_nav_links
    )
  end

  def with_user_without_avatar(current_user: UserStub.new("Andrey"))
    render Educhain::Navbar::Component.new(
      brand_logo_url: "educhain/view_components/logo.svg", 
      current_user: current_user, 
      avatar_url: nil,
      profile_url: "#",
      nav_links: default_nav_links
    )
  end

  def with_user_with_avatar(current_user: UserStub.new("Andrey"))
    render Educhain::Navbar::Component.new(
      brand_logo_url: "educhain/view_components/logo.svg", 
      current_user: current_user, 
      avatar_url: "educhain/view_components/test-avatar.png",
      profile_url: "#",
      nav_links: default_nav_links
    )
  end

  private

  def default_nav_links
    [{ name: "Каталог", href: "#" }, { name: "Контакты", href: "#" }, { name: "О нас", href: "#" }]
  end
end