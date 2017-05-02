###
#  Controller for handling login/logout and redirecting with flash messages.
###
class AuthenticationController < ApplicationController
  def login
    flash[:success] = 'You have been successfully logged in.'
    redirect_back(fallback_location: params[:referrer] || :back)
  end

  def logout
    flash[:notice] = 'You have been successfully logged out.'
    redirect_back(fallback_location: params[:referrer] || :back)
  end
end
