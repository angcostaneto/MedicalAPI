# Class UsersRepository
#
# Users repository
#
class UsersRepository < AbstractRepository
  def initialize
    super
    @model = User
  end
end
