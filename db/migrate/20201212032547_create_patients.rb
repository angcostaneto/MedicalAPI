class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_digest
      t.integer :phone
      t.string :document
      t.text :recommendation
      t.references :health_plans

      t.timestamps
    end
  end
end
