class CreateMedicalAppointmentsValues < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_appointments_values do |t|
      t.decimal :value
      t.reference :doctor

      t.timestamps
    end
  end
end
