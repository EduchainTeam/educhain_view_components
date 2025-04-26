class Educhain::Card::Course::Component < Educhain::BaseComponent
  def initialize(course:, cart_url:, favorite_url:, **attrs)
    @course = course
    @cart_url = cart_url
    @favorite_url = favorite_url
    @attrs = attrs

    @attrs[:class] = [
      "flex text-sm items-center",
      @attrs[:class]
    ].compact.join(" ")
  end
end