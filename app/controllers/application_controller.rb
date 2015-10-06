class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

<<<<<<< HEAD
  def current_user
  	if session[:contact_id]
  		@contact ||= Contact.find(session[:contact_id])
  	end
=======
 def current_user
    if session[:contact_id]
      @contact ||= Contact.find(session[:contact_id])
    end
>>>>>>> 35663e4d88ae8c4eb8f45f150e3b1e424e4730fd
  end
  helper_method :current_user
end
