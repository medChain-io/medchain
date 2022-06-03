class AddUserTypeIdToMedwalletAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :medwallet_accounts, :user_type_id, :integer
  end
end
