class DiagnosisService
  def initialize
    @diagnosis_repository = DiagnosisRepository.new
  end

  def create(doctor_params)
    @diagnosis_repository.create(doctor_params)
  end

  def find(doctor_params)
    @diagnosis_repository.find(doctor_params)
  end

  def get(id)
    @diagnosis_repository.get(id: id)
  end

  def update(id, args)
    @diagnosis_repository.update(id, args)
  end

  def delete(id)
    @diagnosis_repository.delete(id)
  end
end
