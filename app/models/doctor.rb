class Doctor < UserBase
  belongs_to :medical_specialization, optional: true

  validates :medical_specializations_id, presence: true
end
