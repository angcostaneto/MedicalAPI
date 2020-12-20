# Class DoctorsRepository
#
# Doctors repository
#
class DoctorsRepository < AbstractRepository
  def initialize
    super
    @model = Doctor
  end
end

