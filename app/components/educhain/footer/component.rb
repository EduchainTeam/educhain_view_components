# frozen_string_literal: true

class Educhain::Footer::Component < Educhain::BaseComponent
  renders_many :items, Educhain::Footer::Item::Component
  renders_one :logo, Educhain::Footer::Logo::Component

  def initialize(copyright:)
    @copyright = copyright
  end

  private

  attr_reader :copyright
end
