# == Schema Information
#
# Table name: fee_schedules
#
#  id            :bigint           not null, primary key
#  action        :string
#  cost          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  payer_plan_id :integer
#  provider_id   :integer
#  treatment_id  :integer
#
require "test_helper"

class FeeScheduleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
