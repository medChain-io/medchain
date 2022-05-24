# == Schema Information
#
# Table name: payer_plans
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  payer_id   :integer
#
require "test_helper"

class PayerPlanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
