class CreateDiagnoses < ActiveRecord::Migration[6.1]
  def change
    create_table :diagnoses do |t|
      t.text :diagnosis
      t.reference :doctor
      t.reference :patient
      t.reference :medical_appointment

      t.timestamps
    end
  end
end
