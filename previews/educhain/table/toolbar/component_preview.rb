# frozen_string_literal: true

class Educhain::Table::Toolbar::ComponentPreview < ViewComponent::Preview

  def playground()
    render Educhain::Table::Toolbar::Component.new() do
      tag.div("Toolbar Content")
    end
  end
end
