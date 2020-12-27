class MedicalSpecializationRepository < AbstractRepository
  def initialize
    super
    @model = MedicalSpecialization
  end
end
