# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!, unless: :devise_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def current_company
    @current_company ||= current_user.company if user_signed_in?
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[company_name company_id])
  end

  # Turn the current_company method into a helper to be able to use it in view files
  helper_method :current_company
end
