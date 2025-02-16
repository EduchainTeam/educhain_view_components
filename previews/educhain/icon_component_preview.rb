# frozen_string_literal: true

class Educhain::IconComponentPreview < ViewComponent::Preview
  # Используются иконки ресурса https://remixicon.com/
  # @label Default
  # @param name text
  # @param width number
  # @param height number
  # @param fill text
  def default(name: "account-box-fill", width: 40, height: 40, fill: 'blue')
    render(Educhain::Icon::Component.new(name:, width:, height:, fill:))
  end

  # К иконкам можно применять css стили через параметр class:
  # @param name text
  # @param class text
  def stylable(name: "play-circle-fill", class: "w-10 h-10 hover:w-12 hover:h-12 hover:fill-blue-500")
    render(Educhain::Icon::Component.new(name:, class:))
  end

  # @label All icons
  def overview
    render_with_template
  end
end
