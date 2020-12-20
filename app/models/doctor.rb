class Doctor < UserBase
  validates :medical_specializations_id, presence: true

  belongs_to :medical_specialization
end
