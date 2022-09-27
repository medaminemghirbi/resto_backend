class ApplicationController < ActionController::API
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?

    private
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
     #devise_parameter_sanitizer.permit(:sign_in, keys: [:token])
    end
end