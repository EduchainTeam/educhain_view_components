# frozen_string_literal: true

class Educhain::IconComponentPreview < ViewComponent::Preview
  # @label Icon
  def default()
    render(Educhain::Icon::Component.new(class: 'w-50 h-50 bg-green-500'))
  end
end
