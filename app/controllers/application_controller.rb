class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :parameter_configure, if: :devise_controller?

  private
  def parameter_configure
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
