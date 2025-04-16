# frozen_string_literal: true

class Educhain::NavbarComponentPreview < ViewComponent::Preview
  CUSTOM_ITEMS = [
    { 
      key: "профиль",
      position: 0,
      route: "#" 
    }, 
    {  
      key: "выйти",
      position: 1,
      route: "#",
      button: true
    }
  ]

  def overview
    render Educhain::Navbar::Component.new(
      brand_logo_url: "educhain/view_components/logo.svg", 
      current_user: nil, 
      profile_url: "#",
      nav_links: default_nav_links
    )
  end

  def with_user_without_avatar
    user = { 
      name: "Andrey", 
      avatar_url: nil,
      profile_url: "#"
    }

    render Educhain::Navbar::Component.new(
      brand_logo_url: "educhain/view_components/logo.svg", 
      current_user: user,
      profile_url: "#",
      nav_links: default_nav_links,
      menu_items: CUSTOM_ITEMS
    )
  end

  def with_user_with_avatar
    user = {
      name: "Andrey",
      avatar_url: "educhain/view_components/test-avatar.png",
      profile_url: "#",
      settings_url: "#",
      logout_url: "#"
    }
    
    render Educhain::Navbar::Component.new(
      brand_logo_url: "educhain/view_components/logo.svg",
      current_user: user,
      nav_links: default_nav_links
    )
  end

  private

  # Returns an array of default navigation links for the navbar component.
  def default_nav_links
    [{ name: "Каталог", href: "#" }, { name: "Контакты", href: "#" }, { name: "О нас", href: "#" }]
  end
end
