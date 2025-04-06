# frozen_string_literal: true

class Educhain::CheckboxComponentPreview < ViewComponent::Preview
  
  # @label Overview
  def overview()
    sizes = Educhain::Checkbox::Component::SIZES
    render_with_template(locals: {     
      sizes:
    })
  end

  # @label Playground
  # @param size select { choices: [s, m] }
  # @param checked toggle
  # @param disabled toggle
  def playground(size: :m, checked: false, disabled: false)
    render Educhain::Checkbox::Component.new(size:, checked:, disabled:)
  end
end
