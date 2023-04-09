class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  layout :set_layout

  def after_sign_in_path_for(_resource)
    case current_user.role
    when 'admin'
      admin_dashboard_path
    when 'driver'
      driver_dashboard_path
    else
      root_path
    end
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name])
  end

  def set_layout
    if current_user
      'application'
    else
      'auth'
    end
  end
end
