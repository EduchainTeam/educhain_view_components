class Educhain::BasePreview < ViewComponent::Preview
  def current_component
    @current_component ||= self.class.name.chomp("ComponentPreview").concat("::Component").constantize
  end
end
