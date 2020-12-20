# Class MedicalAppointmentRepository
#
# Medical appointment repository
#
class MedicalAppointmentRepository < AbstractRepository
  def initialize
    super
    @model = MedicalAppointment
  end
end