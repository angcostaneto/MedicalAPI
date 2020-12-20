class DoctorsService
  def initialize
    @doctor_repository = DoctorsRepository.new
  end

  def create(doctor_params)
    @doctor_repository.create(doctor_params)
  end

  def find(doctor_params)
    @doctor_repository.find(doctor_params)
  end

  def get(id)
    @doctor_repository.get(id: id)
  end

  def update(id, args)
    @doctor_repository.update(id, args)
  end

  def delete(id)
    @doctor_repository.delete(id)
  end
end
