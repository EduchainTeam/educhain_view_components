# frozen_string_literal: true

# @component "ui/tab"
class Educhain::TabComponentPreview < ViewComponent::Preview  
    # @param text text
    def overview(text: "text")
      render_with_template locals: { text: }
    end
  
    # @param text text
    # @param size select { choices: [s, m, l] }
    # @param current toggle
    # @param disabled toggle
    def playground(text: "Tab", size: :m, current: false, disabled: false)
      render Educhain::Tab::Component.new(text:, size:, current:, disabled:)
    end
  end