# frozen_string_literal: true

# config/initializers/simple_form.rb

# Begin the setup block for configuring SimpleForm, passing a configuration object to the block.
SimpleForm.setup do |config|
  # Define a wrapper named :default with the CSS class "form__group".
  config.wrappers :default, class: 'form__group' do |b|
    # Use HTML5 features in the form.
    b.use :html5
    # Use placeholder attributes for form inputs.
    b.use :placeholder
    # Use labels with a visually-hidden class.
    b.use :label
    # Use form inputs with specific classes, and indicate invalid state with another class.
    b.use :input, class: 'form__input', error_class: 'form__input--invalid'
  end

  # Default configurations
  # Configure SimpleForm to generate no additional classes for specific components.
  config.generate_additional_classes_for = []

  # Set the default wrapper to use for forms to :default.
  config.default_wrapper = :default

  # Set the default class for buttons within forms to "btn".
  config.button_class = 'btn'

  # Configure the default behavior for label text generation using a lambda that returns the label as is.
  config.label_text = ->(label, _, _) { label }

  # Set the HTML tag to be used for error notifications to a div element.
  config.error_notification_tag = :div

  # Set the class for error notifications to "error_notification".
  config.error_notification_class = 'error_notification'

  # Disable browser validations, indicating that the application will handle validations on the server side.
  config.browser_validations = false

  # Configure the style for rendering boolean input fields to :nested.
  config.boolean_style = :nested

  # Set the class for boolean input labels to "form__checkbox-label".
  config.boolean_label_class = 'form__checkbox-label'
end
