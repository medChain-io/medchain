class AddProfilePictureToMedwalletAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :medwallet_accounts, :profile_picture, :string
  end
end
