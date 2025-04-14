# frozen_string_literal: true

class Educhain::Card::Component < Educhain::BaseComponent
  SCHEMES = {
    primary: "bg-card_gray-200 p-5 py-3.5 text-card_gray-600 rounded-2xl",
    secondary: "bg-card_gray-100 p-5 py-3.5 text-card_gray-600 rounded-2xl ",
  }.freeze

  def initialize(scheme: :primary, **attributes)
    @attributes = attributes
    @attributes[:class] = [
      SCHEMES.fetch(scheme.to_sym),
      @attributes[:class]
    ].join(' ')
  end

  def call
    content_tag(:div, content, **@attributes)
  end
end
