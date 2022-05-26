# == Schema Information
#
# Table name: medwallet_accounts
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  private_key            :string
#  public_key             :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  user_type_id           :integer
#
# Indexes
#
#  index_medwallet_accounts_on_email                 (email) UNIQUE
#  index_medwallet_accounts_on_reset_password_token  (reset_password_token) UNIQUE
#
require "test_helper"

class MedwalletAccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
