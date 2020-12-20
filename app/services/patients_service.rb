class PatientsService
  def initialize
    @patients_repository = PatientsRepository.new
  end

  def create(patients_params)
    @patients_repository.create(patients_params)
  end

  def find(patients_params)
    @patients_repository.find(patients_params)
  end

  def get(id)
    @patients_repository.get(id: id)
  end

  def update(id, args)
    @patients_repository.update(id, args)
  end

  def delete(id)
    @patients_repository.delete(id)
  end
end
