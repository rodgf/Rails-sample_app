class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
	
  def inicio
		if logged_in?
			@usuario = @current_user
		else
			@usuario = User.new
			@usuario.name = "Visitante"
		end
  end
end
