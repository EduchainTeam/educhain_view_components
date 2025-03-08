# frozen_string_literal: true

require "test_helper"
require "view_component/test_case"

class Educhain::ViewComponents::BadgeComponentTest < ViewComponent::TestCase
  include Educhain::ViewComponents::ComponentsHelper

  def test_component_renders_badge
    render_inline component("badge").new(name: "Test badge", color: :graphite_light, size: :m)

    assert_text("Test badge", exact: true, normalize_ws: true)
    assert_selector("*", class: "text-black bg-graphite-light")
    assert_selector("*", class: "px-3 py-0.5 text-sm font-semibold")
  end
end
