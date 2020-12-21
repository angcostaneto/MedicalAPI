class Diagnosis < ApplicationRecord
  validates :diagnosis, presence: true
  validates :doctor_id, presence: true
  validates :patient_id, presence: true
end
