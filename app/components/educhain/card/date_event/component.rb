class Educhain::Card::DateEvent::Component < ViewComponent::Base
  def initialize(icon_name:, start:, finish:,  **attributes)
    @icon_name = icon_name
    @start = start
    @finish = finish
    @attributes = attributes
    @attributes[:class] = [
      "flex text-sm items-center",
      @attributes[:class]
    ].join(" ")
  end

  private

  def address
    @address ||= ADDRESS_KEY.map { |key| @address_hash[key] }.compact.join(", ")
  end

  def day_month(date)
    I18n.l(date, format: :day_month)
  end
end
