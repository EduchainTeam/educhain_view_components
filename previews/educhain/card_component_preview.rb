class Educhain::CardComponentPreview < ViewComponent::Preview

  # @default
  def default
    render(Educhain::Card::Component.new.with_content("My example"))
  end
end
