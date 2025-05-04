# frozen_string_literal: true

class Educhain::Footer::Component < Educhain::BaseComponent
  attr_reader :footer_items
  renders_many :items, Educhain::Footer::Item::Component
  renders_one :logo, Educhain::Footer::Logo::Component

  def initialize(
    copyright:,
    footer_items: Educhain::ViewComponents::Configuration.new.footer_items
  )
    @copyright = copyright
    @footer_items = footer_items
  end

  private

  attr_reader :copyright
end
