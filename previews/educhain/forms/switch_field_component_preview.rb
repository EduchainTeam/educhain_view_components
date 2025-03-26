# frozen_string_literal: true

# @component "ui/forms/switch_field"
class Educhain::Forms::SwitchFieldComponentPreview < ViewComponent::Preview
  def overview
    render_with_template
  end

  # @param label text
  # @param error text
  # @param hint text
  # @param tip text
  # @param size select { choices: [s, m] }
  # @param checked toggle
  # @param disabled toggle
  def playground(
    label: "Your Label",
    error: "Your Error Message",
    hint: "Your Hint Text",
    tip: "Your Tip Text",
    size: :m,
    checked: false,
    disabled: false
  )
    render Educhain::Forms::SwitchField::Component.new(
      label:,
      name: nil,
      error: [error],
      hint:,
      tip:,
      size: size.to_sym,
      checked:,
      disabled:,
    )
  end
end
