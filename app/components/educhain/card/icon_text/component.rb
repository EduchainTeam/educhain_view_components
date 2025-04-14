# frozen_string_literal: true

class Educhain::Card::IconText::Component < Educhain::BaseComponent
  def initialize(icon_name:, text: , **attributes)
    @icon_name = icon_name
    @text = text
    @attributes = attributes
    @attributes[:class] = [
      "flex text-sm items-center",
      @attributes[:class]
    ].join(' ')
  end
end
