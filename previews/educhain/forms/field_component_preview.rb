# frozen_string_literal: true

# @component "ui/forms/field"
class Educhain::Forms::FieldComponentPreview < ViewComponent::Preview
  
    def overview
      render_with_template
    end
  
    # @param hint text
    # @param tip text
    # @param error text
    def playground(label: "My field", hint: "hint", tip: "tip", error: "error")
      render Educhain::Forms::Field::Component.new(label:, hint:, tip:, error:, input_attributes: {
        tag: :input, value: "My value", error:
      })
    end
  end