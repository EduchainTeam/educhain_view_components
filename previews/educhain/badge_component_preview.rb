# frozen_string_literal: true

class Educhain::BadgeComponentPreview < Educhain::BasePreview
  # @param name text
  def overview(name: "Label")
    render_with_template(locals: { name: })
  end

  # @param name text
  # @param color select :color_options
  # @param size select :size_options
  def playground(name: "Label", color: :green, size: :m)
    render component("badge", name:, color:, size:)
  end

  private

  def size_options
    component("badge").SIZES.keys
  end

  def color_options
    component("badge").COLORS.keys
  end
end
