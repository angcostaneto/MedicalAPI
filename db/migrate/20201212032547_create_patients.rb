class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :document
      t.text :recommendation
      t.references :users
      t.references :health_plans

      t.timestamps
    end
  end
end
