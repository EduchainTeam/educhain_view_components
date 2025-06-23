# frozen_string_literal: true

# @component "modal"
class Educhain::ModalComponentPreview < ViewComponent::Preview
  include Educhain::Preview

  def with_text
    render_with_template locals: { current_component: current_component }
  end

  def with_form
    render_with_template locals: { current_component: current_component }
  end

  def with_actions
    render_with_template locals: { current_component: current_component }
  end
end
