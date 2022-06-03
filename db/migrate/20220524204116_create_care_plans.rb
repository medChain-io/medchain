class CreateCarePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :care_plans do |t|
      t.integer :fee_schedule_id
      t.integer :patient_id
      t.string :date
      t.integer :status_id

      t.timestamps
    end
  end
end
