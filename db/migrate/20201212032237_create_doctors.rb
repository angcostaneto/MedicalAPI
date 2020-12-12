class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :document
      t.reference :user
      t.reference :medical_specialization

      t.timestamps
    end
  end
end
