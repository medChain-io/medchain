# == Schema Information
#
# Table name: patients
#
#  id            :bigint           not null, primary key
#  dob           :date
#  name          :string
#  ssn           :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  medwallet_id  :integer
#  payer_plan_id :integer
#
require "test_helper"

class PatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
