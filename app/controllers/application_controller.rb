class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include CurrentCart
  before_action :set_cart

  private
  	def authenticate_admin!
  		authenticate_user!
  		unless current_user.admin?
  			redirect_to store_url, alert: "Вы не являетесь администратором"
  		end
  	end
end
