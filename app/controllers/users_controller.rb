class UsersController < ApplicationController
  def initialize
    super
    @repository = UserRepository.new
  end

  def create
    user = @repository.create(user_params)
    return user
  end

  def update
    user = @repository.update(id: id, args: user_params)

    return user
  end

  def get
    return @repository.get(id: id)
  end

  private

  # @method user_params
  #     Strong params for encapsulate the permissible parameters and avoid mass assignments until they have been
  #     permitted.
  def user_params
    params.require(:user).permit(:name, :email, :phone, :password, :password_confirmation)
  end
end
