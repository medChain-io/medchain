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
class CarePlan < ApplicationRecord


  belongs_to(:patient)

  belongs_to(:fee_schedule)

  belongs_to(:status)


  validates(:status_id, presence: true)

  validates(:date, presence: true)



end
