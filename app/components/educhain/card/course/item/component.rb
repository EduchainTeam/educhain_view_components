# frozen_string_literal: true

class Educhain::Card::Course::Item::Component < Educhain::BaseComponent
  def initialize(label:, value:)
    @label = label
    @value = value
  end
end