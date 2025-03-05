# frozen_string_literal: true

# @component "ui/details_list"
class Educhain::DetailsListComponentPreview < ViewComponent::Preview
  def overview
    render_with_template
  end
  
  # @param items select { choices: [[Order details, './data/example1.json'], [Product details, './data/example2.json'], [Account details, './data/example3.json']] }
  def playground(items: './details_list_component_preview/example1.json')
    parsed_items = JSON.parse(
      File.read(File.join(__dir__, items)),
      symbolize_names: true
    )

    render Educhain::DetailsList::Component.new(items: parsed_items)
  end
end