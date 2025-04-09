# frozen_string_literal: true

class Educhain::Image::Component < Educhain::BaseComponent
  def initialize(src:, alt: "", **attrs)
    raise ArgumentError, "src must be present" if src.blank?
    
    @src = src
    @alt = alt
    @attrs = attrs

    # Hide the image from screen readers by default.
    @attrs["aria-hidden"] = true if @alt.blank? && !@attrs.key?("aria-hidden")

    # Set the loading attribute for lazy loading of images to optimize page load time.
    # Default is "lazy" unless specified otherwise.
    @attrs[:loading] ||= "lazy"

    # Set the decoding attribute to "async" for quicker image rendering.
    # This allows the browser to decode images asynchronously.
    @attrs[:decoding] ||= "async"
  end

  def call
    tag.img(src: @src, alt: @alt, **@attrs)
  end
end