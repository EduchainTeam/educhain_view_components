# frozen_string_literal: true

class Educhain::IconComponentPreview < ViewComponent::Preview
  # Используются иконки https://tabler.io/icons
  # @label Icon
  # @param name text
  # @param size number
  # @param filled text
  # @param color text
  # @param stroke_width number
  def default(name: "alert-triangle", size: 20, color: "black", filled: 'false', stroke_width: 2)
    render(Educhain::Icon::Component.new(name: name, size: size, color: color, filled: filled, stroke_width: stroke_width))
  end
end
