class Educhain::CardComponentPreview < ViewComponent::Preview

  # @default
  def default
    render(Educhain::Card::Component.new.with_content("My example"))
  end

  # @label An example of card with icon_text content (event time)
  def icon_text_event_time(
    icon_name: "time-line",
    text: "Начало: 12 апреля Конец: 12 мая"
  )
    render_with_template(
      locals: {
        icon_name:,
        text:
      }
    )
  end

  # @label An example of card with icon_text content (address)
  def icon_text_address(
    icon_name: "map-pin-line",
    text: "Москва, Проспект Длинного названия, дом 12, корпус 2"
  )
    render_with_template(
      locals: {
        icon_name:,
        text:
      }
    )
  end
end
