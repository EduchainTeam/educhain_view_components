# frozen_string_literal: true

class Educhain::IconComponentPreview < ViewComponent::Preview
  # @label Icon
  def default()
    render(Educhain::Icon::Component.new())
  end
end
