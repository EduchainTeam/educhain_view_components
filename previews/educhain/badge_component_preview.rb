# frozen_string_literal: true

class Educhain::BadgeComponentPreview < ViewComponent::Preview
  # @param name text
  def overview(name: "Label")
    render_with_template(locals: { name: })
  end

  # @param name text
  # @param color select :color_options
  # @param size select :size_options
  def playground(name: "Label", color: :green, size: :m)
    render Educhain::Badge::Component.new(name:, color:, size:)
  end

  private

  def size_options
    Educhain::Badge::Component::SIZES.keys
  end

  def color_options
    Educhain::Badge::Component::COLORS.keys
  end
end