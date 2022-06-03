class CreateTreatmentActions < ActiveRecord::Migration[6.1]
  def change
    create_table :treatment_actions do |t|
      t.string :code
      t.string :action

      t.timestamps
    end
  end
end
