# frozen_string_literal: true

class Educhain::Icon::Component < Educhain::BaseComponent
  def initialize()
  end

  def call
    content_tag("div", "example_icon")
  end
end
