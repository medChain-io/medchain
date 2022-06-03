# == Schema Information
#
# Table name: payers
#
#  id           :bigint           not null, primary key
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  medwallet_id :integer
#
require "test_helper"

class PayerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
