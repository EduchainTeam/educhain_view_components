# frozen_string_literal: true

class Educhain::Toast::ComponentPreview < ViewComponent::Preview
  def overview
    render_with_template
  end

  # @param scheme select { choices: [default, error] }
  # @param text text
  # @param icon text
  def playground(text: "Toast", scheme: :default, icon: "checkbox-circle-fill")
    render component("ui/toast").new(text:, scheme:, icon:)
  end
end
