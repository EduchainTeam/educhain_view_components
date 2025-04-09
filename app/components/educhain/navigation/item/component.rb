# frozen_string_literal: true

# Menu item within a {Sidebar}
class Educhain::Navigation::Item::Component < Educhain::BaseComponent
  with_collection_parameter :item

  # @param item [Educhain::Navigation::Component::MenuItem]
  # @param fullpath [String] the current path
  def initialize(
    item:,
    fullpath: "#"
  )
    @item = item
    @fullpath = fullpath
  end

  def path
    @item.path
  end

  def active?
    @item.active?(@fullpath)
  end

  def fullpath
    @fullpath
  end
end
