# Class MedicalAppointmentsValueRepository
#
# Doctors repository
#
class MedicalAppointmentsValueRepository < AbstractRepository
  def initialize
    super
    @model = MedicalAppointmentsValue
  end
end
