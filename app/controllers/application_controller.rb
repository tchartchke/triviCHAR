class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def welcome
    if user_signed_in?
      redirect_to user_root_path
    else
      render :welcome
    end
  end



  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  def can_view(obj, role)
    redirect_to user_root_path unless obj.send(role) == current_user
  end


end