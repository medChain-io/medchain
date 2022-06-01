class AddMedwalletIdToProviders < ActiveRecord::Migration[6.1]
  def change
    add_column :providers, :medwallet_id, :integer
  end
end
