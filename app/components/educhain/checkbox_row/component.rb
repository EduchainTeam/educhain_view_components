# frozen_string_literal: true

class Educhain::CheckboxRow::Component < Educhain::BaseComponent
  def initialize(options:, row_title:, form:, method:, layout: :default)
    @options = options
    @row_title = row_title
    @form = form
    @method = method
    @layout = layout
  end
end
