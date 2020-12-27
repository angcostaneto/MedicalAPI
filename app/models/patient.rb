class Patient < UserBase
  belongs_to :health_plan, optional: true

  validates :health_plans_id, presence: true
end
