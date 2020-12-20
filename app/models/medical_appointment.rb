class MedicalAppointment < ApplicationRecord
  validates :value_id, presence: true
  validates :doctor_id, presence: true
  validates :patient_id, presence: true
  validates :start, presence: true
  validates :end, presence: true

  belongs_to :doctor
  belongs_to :patient
end
