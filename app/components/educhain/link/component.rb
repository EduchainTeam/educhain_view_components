# frozen_string_literal: true

class Educhain::Link::Component < Educhain::BaseComponent
  SCHEMES = {
    primary: %{
      
    },
    navbar: %{
      text-gray-600
      text-md font-normal
      text-nowrap
      hover:text-gray-800
    }
  }.freeze

  def initialize(text:, href:, scheme: :primary, **attrs)
    @text = text
    @href = href
    @attrs = attrs

    @attrs[:class] = [
      SCHEMES.fetch(scheme.to_sym),
      @attrs[:class],
    ].compact.join(' ')
  end

  def call
    link_to @text, @href, **@attrs
  end
end
