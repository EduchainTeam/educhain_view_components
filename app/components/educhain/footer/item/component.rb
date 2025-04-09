# frozen_string_literal: true

class Educhain::Footer::Item::Component < Educhain::BaseComponent
  with_collection_parameter :item
  # @param item [Educhain::Footer::Component::BlockItem]
  def initialize(item:)
    @item = item
  end

  def path
    @item.path
  end

  def width
    @item.width
  end

  def key
    @item.key
  end

  def links
    @item.links
  end
end
