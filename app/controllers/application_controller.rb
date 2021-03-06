class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
      if current_user.profile
        nsbemon_main_path
      else
        new_user_profile_path(current_user)
      end
    end 
end
