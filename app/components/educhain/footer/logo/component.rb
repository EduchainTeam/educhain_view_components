class Educhain::Footer::Logo::Component < Educhain::BaseComponent
  def initialize(width:, path:, text:)
    @width = width
    @path = path
    @text = text
  end

  private

  attr_reader :width, :path, :text
end
