class Educhain::Card::AboutProgram::Component < ViewComponent::Base
  def initialize(tags: nil, title: nil, text: nil, **attributes)
    @tags = tags
    @title = title
    @text = text
    @attributes = attributes
  end
end
