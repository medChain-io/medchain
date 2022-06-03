class AddPrivateKeyToMedwalletAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :medwallet_accounts, :private_key, :string
  end
end
