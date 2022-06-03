class AddUsernameToMedwalletAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :medwallet_accounts, :username, :string
  end
end
