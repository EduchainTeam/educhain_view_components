# frozen_string_literal: true

# @component "ui/pages/index"
class Educhain::Pages::IndexComponentPreview < ViewComponent::Preview
  include Educhain::Preview

  def overview
    model_class = Class.new(Educhain::ViewComponents::ApplicationRecord) do
      def self.name
        'Educhain::ViewComponents::TestModel'
      end
      self.inheritance_column = nil
      self.table_name = 'sqlite_master'

      def number
        'select me'
      end
    end

    records = model_class.all
    page = GearedPagination::Recordset.new(records).page(1)

    component_subclcass = Class.new(Educhain::Pages::Index::Component) do
      def self.name
        "Educhain::MyIndex::Component"
      end

      def model_class
        Educhain::ViewComponents::ApplicationRecord
      end

      def search_key
        :number_cont
      end

      def search_url
        "/rails/view_components/educhain/pages/index_component/overview"
      end

      def columns
        [:number]
      end

      def page_actions
        render Educhain::Button::Component.new(
          tag: :a,
          text: t('.add'),
          href: '#',
          icon: "add-line",
        )
      end

      def batch_actions
        [{
          label: "Print",
          action: "print",
        }]
      end
    end

    render component_subclcass.new(page:)
  end
end
