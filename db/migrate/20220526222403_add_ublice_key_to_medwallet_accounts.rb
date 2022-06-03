class AddUbliceKeyToMedwalletAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :medwallet_accounts, :public_key, :string
  end
end
