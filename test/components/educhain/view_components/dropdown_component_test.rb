# frozen_string_literal: true

require "test_helper"
require "view_component/test_case"

class Educhain::ViewComponents::DropdownComponentTest < ViewComponent::TestCase
  include Educhain::ViewComponents::ComponentsHelper

  def test_component_renders_dropdown
    render_inline component("dropdown").new(text: "Test text", size: :s, direction: :right)

    assert_selector("*", text: "Test text")
    assert_selector("*", class: "w-5 h-5")
    assert_selector("*", class: "left-0")
  end
end
