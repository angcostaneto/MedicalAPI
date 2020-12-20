class MedicalAppointmentService
  def initialize
    @medical_appointment_repository = MedicalAppointmentRepository.new
  end

  def create(medical_appointment_params)
    @medical_appointment_repository.create(medical_appointment_params)
  end

  def find(medical_appointment_params)
    @medical_appointment_repository.find(medical_appointment_params)
  end

  def get(id)
    @medical_appointment_repository.get(id: id)
  end

  def update(id, args)
    @medical_appointment_repository.update(id, args)
  end

  def delete(id)
    @medical_appointment_repository.delete(id)
  end
end
