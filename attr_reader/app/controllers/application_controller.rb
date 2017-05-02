class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  
   protected
  
  def configure_permitted_parameters
    #will need to add fields to be updated
    
    devise_parameter_sanitizer.permit :account_update, keys: [:password, :password_confirmation, :current_password, :username, :firstname, :lastname, :genre, :state, :city, :street, :building_num, :zip_code, :apt_num, :phone]
    
    devise_parameter_sanitizer.permit :sign_up, keys: [:username, :email, :password]
  end
 


end
