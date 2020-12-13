# Class UserRepository
#
# User repository
#
class UserRepository < AbstractRepository
  def initialize
    super
    @model = User
  end
end
