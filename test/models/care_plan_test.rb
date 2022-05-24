# == Schema Information
#
# Table name: care_plans
#
#  id              :bigint           not null, primary key
#  date            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  fee_schedule_id :integer
#  patient_id      :integer
#  status_id       :integer
#
require "test_helper"

class CarePlanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
