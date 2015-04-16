class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Required to add Name as an input for Devise
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  # Used to add Name as an input for Devise
  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) << :name
  	devise_parameter_sanitizer.for(:account_update) << :name
  end

end
