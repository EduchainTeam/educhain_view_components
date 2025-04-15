class Educhain::CardComponentPreview < ViewComponent::Preview

  # @default
  def default
    render(Educhain::Card::Component.new.with_content("My example"))
  end

  # @label An example of card with address content
  def address(
    icon_name: "map-pin-line",
    address: {
      city_with_type: "г. Москва",
      street_with_type: "Проспект Длинного названия",
      house_with_type: "дом 12",
      block_with_type: "корпус 2",
      flat_with_type: "аудитория 23"
    }
  )
    render_with_template(
      locals: {
        icon_name:,
        address:
      }
    )
  end
  # @label An example of card with date_event content
  def date_event(
    icon_name: "time-line",
    start: Date.new(2025, 04, 12),
    finish: Date.new(2025, 05, 12)
  )
    render_with_template(
      locals: {
        icon_name:,
        start:,
        finish:
      }
    )
  end

  # @label An example of card with about_program content
  def about_program(
    tags: [ "Программа", "Профессиональное обучение" ],
    title: "О программе:",
    text: %(Курс предназначен для специалистов, работающих с радиоактивными материалами, и направлен на углубленное
            изучение современных требований и практик в области радиационной безопасности.
            В рамках программы рассматриваются актуальные нормативно-правовые аспекты, включая законодательные
            и технические регламенты, регулирующие обращение с радиоактивными веществами и отходами.
          )
  )
    render_with_template(
      locals: {
        tags:,
        title:,
        text:
      }
    )
  end
end
