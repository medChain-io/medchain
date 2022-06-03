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
class Patient < ApplicationRecord

belongs_to(:medwallet, class_name: "MedwalletAccount")

has_many(:treatment_schedules, class_name: "CarePlan", dependent: :destroy)

belongs_to(:payer_plan)



validates(:ssn, presence: true)

validates(:ssn, uniqueness: true)

validates(:name, presence: true)

validates(:dob, presence: true)




end
