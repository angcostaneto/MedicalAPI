class MedicalAppointment < ApplicationRecord
  belongs_to :doctor, optional: true
  belongs_to :patient, optional: true
  belongs_to :medical_appointments_value, optional: true

  validates :start, presence: true
  validates :end, presence: true
  validates :doctors_id, presence: true
  validates :patients_id, presence: true
  validate :medical_appointments_value_id, presence: true
end
