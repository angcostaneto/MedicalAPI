class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_digest
      t.integer :phone
      t.string :document
      t.references :medical_specializations

      t.timestamps
    end
  end
end
