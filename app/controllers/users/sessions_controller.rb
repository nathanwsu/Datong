class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]

  protected

  attr_accessor :logged_in

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:fname, :lname])
  end

end
