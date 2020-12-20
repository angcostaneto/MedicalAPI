class AddValueReferencesMedicalAppointments < ActiveRecord::Migration[6.1]
  def change
    add_reference :medical_appointments_values, foreign_key: true
  end
end
