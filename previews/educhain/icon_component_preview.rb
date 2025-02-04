# frozen_string_literal: true

class Educhain::IconComponentPreview < ViewComponent::Preview
  def default
    render(Educhain::Icon::Component.new)
  end
end

