class UsersController < ApplicationController
  def initialize
    super
    @repository = UserRepository.new
  end

  def create
    user = @repository.create(args)
    return user
  end

  def update
    user = @repository.update(id: id, params: params)

    return user
  end

  def get
    return @repository.get(id: id)
  end
end
