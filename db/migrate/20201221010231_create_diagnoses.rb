class CreateDiagnoses < ActiveRecord::Migration[6.1]
  def change
    create_table :diagnoses do |t|
      t.text :diagnosis
      t.references :doctor
      t.references :patient
      t.references :medical_appointment

      t.timestamps
    end
  end
end
