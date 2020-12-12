class CreateHealthPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :health_plans do |t|
      t.string :name
      t.text :plan

      t.timestamps
    end
  end
end
