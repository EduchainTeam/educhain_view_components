# frozen_string_literal: true

class Educhain::ThumbnailWithCaption::Component < Educhain::BaseComponent
  attr_reader :icon, :caption, :detail

  def initialize(icon: "question-line", caption: "", detail: nil)
    @icon = icon
    @caption = caption
    @detail = detail
  end

  def icon_thumbnail
    render Educhain::Thumbnail::Component.new(icon:)
  end
end
