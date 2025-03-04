# frozen_string_literal: true

# @component "ui/table"
class Educhain::Table::ComponentPreview < ViewComponent::Preview

  # @param search_bar toggle
  # @param filters toggle "Visible only with the Search Bar enabled"
  # @param batch_actions toggle
  # @param scopes toggle
  # @param sortable select :sortable_select
  def overview(search_bar: false, filters: false, batch_actions: false, scopes: false, sortable: nil)
    render Educhain::Table::Component.new(
      id: 'simple-list',
      data: table_data(batch_actions, sortable),
      search: search_bar ? search_options(filters, scopes) : nil,
      sortable: sortable ? sortable_options(sortable) : nil,
    )
  end

  private

  def sortable_select
    {
      choices: %i[row handle],
      include_blank: true
    }
  end

  def table_data(batch_actions, sortable)
    columns = [
      { header: :id, data: -> { "#{_1.to_s}_1.id.to_s" } },
      { header: :name, data: ":name" },
      { header: -> { "Availability at #{Time.current}" }, data: -> { "#{_1.to_s} ago" } },
      { header: -> { Educhain::Badge::Component.new(name: "$$$") }, data: -> { Educhain::Badge::Component.new(name: _1.to_s, color: :green) } },
      { header: "Generated at", data: Time.current.to_s },
    ]

    if sortable == "handle"
      columns.unshift({
        header: "",
        data: ->(_) { Educhain::Icon::Component.new(name: 'draggable', class: 'w-5 h-5 cursor-pointer handle') }
      })
    end
    {
      class: Class,
      rows: Array.new(10) { |n| "Element #{n}" },
      columns:,
      prev: nil,
      next: '#2',
    }.tap do |data|
      data[:batch_actions] = batch_actions_data if batch_actions
    end
  end

  def batch_actions_data
    [
      {
        label: "Delete",
        action: "#",
        method: :delete,
        icon: 'delete-bin-7-line',
      },
      {
        label: "Discontinue",
        action: "#",
        method: :put,
        icon: 'pause-circle-line',
      },
      {
        label: "Activate",
        action: "#",
        method: :put,
        icon: 'play-circle-line',
      },
    ]
  end

  def search_options(filters, scopes)
    {
      name: :no_key,
      url: '#',
      scopes: scopes ? scope_options : nil,
      filters: filters ? filter_options : nil
    }
  end

  def scope_options
    [
      { name: :all, label: "All", default: true },
      { name: :deleted, label: "Deleted" }
    ]
  end

  def filter_options
    [
      {
        presentation: "Filter",
        combinator: 'or',
        attribute: "attribute",
        predicate: "eq",
        options: [
          ["Yes", 1], ["No", 0]
        ]
      }
    ]
  end

  def sortable_options(sortable)
    options = {
      url: ->(_) { "#" },
      param: 'position'
    }
    options[:handle] = '.handle' if sortable == "handle"
    options
  end
end
