# Class PatientsRepository
#
# Patients repository
#
class PatientsRepository < AbstractRepository
  def initialize
    super
    @model = Patient
  end
end
