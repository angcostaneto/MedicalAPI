class DoctorsService
  def initialize
    @doctor_repository = DoctorsRepository.new
  end

  def create(doctor_params)
    @doctor_repository.create(doctor_params)
  end


end
