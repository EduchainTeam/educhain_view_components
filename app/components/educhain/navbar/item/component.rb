# frozen_string_literal: true

class Educhain::Navbar::Item::Component < Educhain::BaseComponent
  with_collection_parameter :item
  
  def initialize(item:, fullpath: "#")
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