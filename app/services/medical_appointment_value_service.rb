class MedicalAppointmentValueService
  def initialize
    @medical_appointment_value_repository = MedicalAppointmentsValueRepository.new
  end

  def create(medical_appointment_value_params)
    @medical_appointment_value_repository.create(medical_appointment_value_params)
  end

  def find(medical_appointment_value_params)
    @medical_appointment_value_repository.find(medical_appointment_value_params)
  end

  def get(id)
    @medical_appointment_value_repository.get(id: id)
  end

  def update(id, args)
    @medical_appointment_value_repository.update(id, args)
  end

  def delete(id)
    @medical_appointment_value_repository.delete(id)
  end
end

