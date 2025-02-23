# frozen_string_literal: true

class Educhain::DropdownComponentPreview < ViewComponent::Preview
  def overview
    render_with_template
  end

  # @param text text
  # @param size select { choices: [s, m] }
  # @param direction select { choices: [left, right] }
  # @param open toggle
  def playground(text: "text", size: :m, direction: :right, open: false)
    render Educhain::Dropdown::Component.new(
      text:,
      size: size.to_sym,
      direction: direction.to_sym,
      style: "float: #{direction == :left ? 'right' : 'left'}",
      open:,
    ).with_content(
      tag.span("Lorem ipsum dolor sit amet"),
    )
  end
end
