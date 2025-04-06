# frozen_string_literal: true

# @component "ui/thumbnail"
class Educhain::ThumbnailComponentPreview < ViewComponent::Preview
  def overview
    render_with_template
  end

  # @param size select { choices: [s, m, l] }
  # @param src text
  def with_caption
    render Educhain::ThumbnailWithCaption::Component.new(caption: "Caption example")
  end
end