# frozen_string_literal: true

require "test_helper"
require "view_component/test_case"

class Educhain::ViewComponents::ToastComponentTest < ViewComponent::TestCase
  include Educhain::ViewComponents::ComponentsHelper

  def test_component_renders_toast
    render_inline component("toast").new(text: "Test text", scheme: :error)

    assert_selector("*", text: "Test text")
    assert_selector("*", class: "bg-red-500 text-white")
  end
end
