# frozen_string_literal: true

class Educhain::Icon::Component < Educhain::BaseComponent
  def initialize(name: "alert-triangle", size: 20, color: "black", filled: "false", stroke_width: 1)
    @name = filled.to_s == "true" ? "#{name}-filled" : name
    @size = size
    @stroke_width = stroke_width
    @color = color
  end

  def call
    tabler_icon(@name, size: @size, color: @color, stroke_width: @stroke_width)
  rescue
    content_tag("div", class: "wrong-icon") do
      content_tag("div", "X", class: "wrong-icon-text")
    end
  end
end
