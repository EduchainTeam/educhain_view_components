# frozen_string_literal: true

class Educhain::UI::IconComponentPreview < ViewComponent::Preview
  def default
    render(Educhain::UI::Icon::Component.new)
  end
end

