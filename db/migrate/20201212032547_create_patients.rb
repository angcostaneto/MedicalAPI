class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :document
      t.text :recommendation
      t.reference :user
      t.reference :health_plan

      t.timestamps
    end
  end
end
