class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def welcome
    
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  # def after_sign_in_path_for(resource)
    #     stored_location_for(resource) ||
    #       if resource.is_a?(User) && resource.can_publish?
    #         publisher_url
    #       else
    #         super
    #       end
      # end
end