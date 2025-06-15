# frozen_string_literal: true

# @component "forms/checkbox"
class Educhain::Forms::CheckboxComponentPreview < ViewComponent::Preview
  include ::Educhain::Preview
  # **With a form builder**
  #
  # The checkbox component is used to render a checkbox input.
  # It can be used with a Rails form builder by setting the `name` attribute
  # with `forom.object_name`.
  #
  # ```erb
  #   <%= form_for @product do |form| %>
  #     ...
  #     <%= render component('ui/forms/checkbox').new(
  #       name: "#{form.object_name}[accept_tos]",
  #       checked: form.object.accept_tos,
  #     ) %>
  #     ...
  #   <% end %>
  # ```
  #
  # **With stimulus**
  #
  # The checkbox component can be used with stimulus to toggle the `indeterminate`
  # state of the checkbox.
  #
  # ```erb
  #   <%= render component('ui/forms/checkbox').new(
  #     "data-action": "click->#{stimulus_id}#toggleIndeterminate",
  #     "data-#{stimulus_id}-target": "checkbox",
  #   ) %>
  # ```
  #
  # ```js
  #   import { Controller } from "stimulus"
  #
  #   export default class extends Controller {
  #     static targets = ["checkbox"]
  #
  #     toggleIndeterminate() {
  #       this.checkboxTarget.indeterminate = !this.checkboxTarget.indeterminate
  #     }
  #   }
  # ```
  #
  def overview
    render_with_template(locals: { current_component: current_component })
  end

 # @param caption_size select { choices: [xs, s] }
  # @param caption_weight select { choices: [normal, semibold] }
  # @param caption_classes text
  # @param hint toggle
  # @param hint_text text
  # @param hint_position select { choices: [above, below] }
  def playground(caption_size: :s, caption_weight: :normal, caption_classes: '', hint: true, hint_text: "This will be helpful", hint_position: :above)
    render current_component.new(object_name: "user", method: :active, checked: true) do |component|
      component.with_label(text: "Active", size: caption_size, weight: caption_weight, classes: caption_classes)
      component.with_hint(text: hint_text, position: hint_position) if hint
    end
  end
end

