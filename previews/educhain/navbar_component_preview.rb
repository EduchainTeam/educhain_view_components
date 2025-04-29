# frozen_string_literal: true

class Educhain::NavbarComponentPreview < ViewComponent::Preview
  PREVIEW_ITEMS = [
    { 
      position: 0,
      type: "link",
      text: "Профиль",
      href: "#" 
    },
    { 
      position: 2,
      type: "link",
      text: "Помощь",
      href: "#" 
    },
    {
      position: 1,
      type: "link",
      text: "Настройки",
      href: "#" 
    },
    {  
      position: 99,
      type: "button",
      text: "Выйти",
      href: "#"
    }
  ]

  PREVIEW_NAV_LINKS = [
    { name: "Каталог", href: "#" }, 
    { name: "Контакты", href: "#" }, 
    { name: "О нас", href: "#" }
  ]

  def overview
    render_with_template
  end

  def without_user
    render Educhain::Navbar::Component.new(
      brand_logo_url: "educhain/view_components/logo.svg", 
      current_user: nil, 
      profile_url: "#",
      nav_links: [
        { name: "Каталог", href: "#" }, 
        { name: "Контакты", href: "#" }, 
        { name: "О нас", href: "#" }
      ]
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
      nav_links: PREVIEW_NAV_LINKS,
      menu_items: PREVIEW_ITEMS
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
      nav_links: PREVIEW_NAV_LINKS,
      menu_items: PREVIEW_ITEMS
    )
  end
end
