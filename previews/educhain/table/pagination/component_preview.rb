# frozen_string_literal: true

class Educhain::Table::Pagination::ComponentPreview < ViewComponent::Preview

  def overview
    render_with_template
  end

  # @param prev_link
  # @param next_link
  def playground(prev_link: '#1', next_link: '#2')
    render Educhain::Table::Pagination::Component.new(
      prev_link: prev_link.presence,
      next_link: next_link.presence,
    )
  end
end
