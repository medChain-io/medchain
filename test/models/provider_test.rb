# == Schema Information
#
# Table name: providers
#
#  id           :bigint           not null, primary key
#  name         :string
#  specialty    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  medwallet_id :integer
#
require "test_helper"

class ProviderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
