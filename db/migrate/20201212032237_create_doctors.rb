class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :document
      t.references :users
      t.references :medical_specializations

      t.timestamps
    end
  end
end
