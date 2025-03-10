# frozen_string_literal: true

class Educhain::ToastComponentPreview < ViewComponent::Preview
  include Educhain::Preview

  def overview
    render_with_template(locals: { current_component: current_component })
  end

  # @param scheme select { choices: [default, error] }
  # @param text text
  # @param icon text
  def playground(text: "Toast", scheme: :default, icon: "checkbox-circle-fill")
    render current_component.new(text:, scheme:, icon:)
  end
end
