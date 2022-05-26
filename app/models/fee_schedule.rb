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
class FeeSchedule < ApplicationRecord
  
  has_many(:treatment_schedules, class_name: "CarePlan", dependent: :destroy)

  belongs_to(:payer_plan)

  belongs_to(:treatment, class_name: "TreatmentAction")

  belongs_to(:provider)


end
