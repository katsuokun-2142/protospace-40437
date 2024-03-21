class UsersController < ApplicationController
  before_action :authenticate_user!, expect: [:show], if: :devise_controller?

  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
  end
end
