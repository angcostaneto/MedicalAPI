class CreateMedicalAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_appointments do |t|
      t.references :patients
      t.references :doctors
      t.time :min_duration
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
