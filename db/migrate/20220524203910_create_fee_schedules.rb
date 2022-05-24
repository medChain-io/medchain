class CreateFeeSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :fee_schedules do |t|
      t.integer :provider_id
      t.string :cost
      t.string :action
      t.integer :payer_plan_id
      t.integer :treatment_id

      t.timestamps
    end
  end
end
