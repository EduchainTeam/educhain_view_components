# frozen_string_literal: true

class Educhain::Navbar::Item::Component < Educhain::BaseComponent
  def initialize(position:, type: :link, text:, href: nil)
    @position = position
    @type = type
    @text = text
    @href = href
  end

  def link?
    @type == "link"
  end

  def button?
    @type == "button"
  end
end
