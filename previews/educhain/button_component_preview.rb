# frozen_string_literal: true

class Educhain::ButtonComponentPreview < ViewComponent::Preview
  # @label Overview
  def overview()
    schemes = Educhain::Button::Component::SCHEMES
    sizes = Educhain::Button::Component::SIZES
    render_with_template(locals: {
      schemes:,
      sizes:
    })
  end
  # Поддерживается передача дополнительных аттрибутов initialize(tag: :button, text: nil, icon: nil, size: :m, scheme: :primary,**attributes)
  # @label Default
  # @param text text
  # @param size select {choices: [s, m, l]}
  # @param scheme select {choices: [primary, secondary, danger, ghost]}
  # @param icon select :all_icons
  # @param class text
  def default(text: "Кнопка", size: :m, scheme: :primary, icon: "logout-box-r-line", class: '')
    render(Educhain::Button::Component.new(text:, size: size.to_sym, scheme: scheme.to_sym, icon:, class:))
  end

  private

  def all_icons
    Educhain::Icon::Component::NAMES.to_a
  end
end
