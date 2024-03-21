class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, expect: [:sign_up, :sign_in]

  private
  def configure_permitted_parameters
    # devise_parameter_sanitizerのpermitメソッド
    # devise_parameter_sanitizer.permit(:deviseの処理名, keys: [:許可するキー])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end

end
