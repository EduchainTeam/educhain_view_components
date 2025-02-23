# frozen_string_literal: true

class Educhain::InputComponentPreview < ViewComponent::Preview
   
  def overview
    render_with_template
  end

  # @param size select {choices: [s, m, l]}
  # @param placeholder text
  def text_input(size: :m, placeholder: "Enter text")
    render(Educhain::Input::Component.new(
      type: :text,
      size: size.to_sym,
      placeholder: placeholder
    ))
  end
  
  # @param size select {choices: [s, m, l]}
  def password_input(size: :m)
    render(Educhain::Input::Component.new(
      type: :password,
      size: size.to_sym,
      placeholder: "Enter password"
    ))
  end

  # @param size select {choices: [s, m, l]}
  def number_input(size: :m)
    render(Educhain::Input::Component.new(
      type: :number,
      size: size.to_sym,
      placeholder: "0"
    ))
  end

  # @param size select {choices: [s, m, l]}
  def email_input(size: :m)
    render(Educhain::Input::Component.new(
      type: :email,
      size: size.to_sym,
      placeholder: "email@example.com"
    ))
  end

  # @param size select {choices: [s, m, l]}
  def textarea(size: :m)
    render(Educhain::Input::Component.new(
      tag: :textarea,
      size: size.to_sym,
      placeholder: "Enter text"
    ))
  end

  # @param size select {choices: [s, m, l]} 
  def select(size: :m)
    render(Educhain::Input::Component.new(
      tag: :select,
      size: size.to_sym,      
      choices: [["Option 1", 1],
                ["Option 2", 2],
                ["Option 3", 3]]))
  end

  # @param size select {choices: [s, m, l]} 
  def select_multiple(size: :m)
    render(Educhain::Input::Component.new(
      tag: :select,
      size: size.to_sym,
      multiple: true,
      choices: [["Option 1", 1],
                ["Option 2", 2],
                ["Option 3", 3]]))
    end

  # @param size select {choices: [s, m, l]}
  def disabled(size: :m)
    render(Educhain::Input::Component.new(
      type: :text,
      size: size.to_sym,
      disabled: true,
      value: "Disabled field"
    ))
  end

  # @param size select {choices: [s, m, l]}
  def field_with_error(size: :m)
    render(Educhain::Input::Component.new(
      type: :text,
      size: size.to_sym,
      "aria-invalid": true,
      error: "This field contains an error"
    ))
  end
end
