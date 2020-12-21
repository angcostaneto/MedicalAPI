class DiagnosisRepository < AbstractRepository
  def initialize
    super
    @model = Diagnosis
  end
end
