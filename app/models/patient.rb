class Patient < UserBase
  validates :health_plan_id, presence: true
end
