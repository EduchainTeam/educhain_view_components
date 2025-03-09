# frozen_string_literal: true

class BasePreview < ViewComponent::Preview
  def current_component
    @current_component ||= self.class.name.chomp("ComponentPreview").concat("::Component").constantize
  end
end
