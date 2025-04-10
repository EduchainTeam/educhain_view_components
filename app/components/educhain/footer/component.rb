# frozen_string_literal: true

class Educhain::Footer::Component < Educhain::BaseComponent
  renders_many :items, Educhain::Footer::Item::Component

  def initialize; end
end
