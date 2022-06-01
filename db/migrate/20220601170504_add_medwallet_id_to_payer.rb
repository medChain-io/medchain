class AddMedwalletIdToPayer < ActiveRecord::Migration[6.1]
  def change
    add_column :payers, :medwallet_id, :integer
  end
end
