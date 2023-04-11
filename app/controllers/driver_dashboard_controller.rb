class DriverDashboardController < ApplicationController
  before_action :authorize_driver!

  def index; end

  private

  def authorize_driver!
    return if current_user&.driver?

    redirect_to root_path, alert: 'You are not authorized to access this page.'
  end
end
