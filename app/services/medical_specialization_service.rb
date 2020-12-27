class MedicalSpecializationService
  def initialize
    @medical_specialization_repository = MedicalSpecializationRepository.new
  end

  def create(medical_specialization_params)
    @medical_specialization_repository.create(medical_specialization_params)
  end

  def find(medical_specialization_params)
    @medical_specialization_repository.find(medical_specialization_params)
  end

  def get(id)
    @medical_specialization_repository.get(id: id)
  end

  def update(id, args)
    @medical_specialization_repository.update(id, args)
  end

  def delete(id)
    @medical_specialization_repository.delete(id)
  end
end
