# rubocop:disable Style/Documentation
# frozen_string_literal: true

class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u|
       u.permit(:first_name, :last_name, :phone, :email, :password, :password_confirmation) }

    # devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}
  end
end

# rubocop:enable Style/Documentation
