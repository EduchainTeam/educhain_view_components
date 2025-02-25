# frozen_string_literal: true

# @component "ui/toggletip"
class Educhain::ToggletipComponentPreview < ViewComponent::Preview
    def overview
      render_with_template
    end
  
    # @param text text
    # @param position select :position_options
    # @param open toggle
    def playground(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", position: :above, open: false)
      render Educhain::Toggletip::Component.new(
        text:,
        position:,
        open:,
        class: "m-40"
      )
    end
  
    private
  
    def position_options
      current_component::POSITIONS.keys
    end
  end