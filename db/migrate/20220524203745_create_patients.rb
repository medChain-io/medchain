class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :ssn
      t.date :dob
      t.integer :medwallet_id
      t.integer :payer_plan_id

      t.timestamps
    end
  end
end
