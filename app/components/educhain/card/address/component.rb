class Educhain::Card::Address::Component < ViewComponent::Base
  ADDRESS_KEY = [ :city_with_type, :street_with_type, :house_with_type, :block_with_type, :flat_with_type ]

  def initialize(icon_name:, address:, **attributes)
    @icon_name = icon_name
    @address_hash = address
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
end
