# frozen_string_literal: true

class Educhain::ToastComponentPreview < Educhain::BasePreview
  def overview
    render_with_template
  end

  # @param scheme select { choices: [default, error] }
  # @param text text
  # @param icon text
  def playground(text: "Toast", scheme: :default, icon: "checkbox-circle-fill")
    render component("toast", text:, scheme:, icon:)
  end
end
