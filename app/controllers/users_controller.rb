class UsersController < ApplicationController
  def initialize
    super
    @user_service = UsersService.new
  end

  def create
    user = @user_service.create(user_params)
    render json: user
  end

  def get
    user = @user_service.get(params[:id])
    render json: user
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :phone, :password, :password_confirmation)
  end
end
