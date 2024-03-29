class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  protected
  def confirm_session
      if user_signed_in?
        
      else
        redirect_to("/users/sign_in")
      end
    end
    
    def admin_session
      redirect_to("/") unless current_user.admin?
    end
end
