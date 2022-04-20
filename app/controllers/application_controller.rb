class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    flash[:login] = "Signed in successfully."
    user_path(@user.id)
  end

  def after_sign_up_path_for(resource)
    flash[:success] = "Welcome! You have signed up successfully."
    user_path(@user.id)
  end

  def after_sign_out_path_for(resource)
    flash[:out] = "Signed out successfully."
    root_path
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end
end