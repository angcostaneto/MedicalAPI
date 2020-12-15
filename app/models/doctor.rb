class Doctor < UserBase
  validates :medical_specializations_id, presence: true
end
