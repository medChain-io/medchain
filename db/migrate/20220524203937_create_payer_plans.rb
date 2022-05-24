class CreatePayerPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :payer_plans do |t|
      t.string :name
      t.integer :payer_id

      t.timestamps
    end
  end
end
