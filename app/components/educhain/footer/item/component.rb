# frozen_string_literal: true

class Educhain::Footer::Item::Component < Educhain::BaseComponent
  Links = Struct.new(:name, :path)

  def initialize(width:, key:, links:)
    @width = width
    @key = key
    @links_hash = links
  end

  private

  def links
    @links ||= @links_hash.map { Links.new(**_1) }
  end

  attr_reader :width, :key
end
