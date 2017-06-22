##
# Devise session controller
##
class SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
    if (User.count == 1) && user_signed_in?
      redirect_to root_path
    else
      redirect_to new_user_session_path
    end
  end
end
