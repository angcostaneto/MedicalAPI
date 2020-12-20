class Patient < UserBase
  validates :health_plan_id, presence: true
  belongs_to :health_plan
end
