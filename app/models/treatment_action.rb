# == Schema Information
#
# Table name: treatment_actions
#
#  id         :bigint           not null, primary key
#  action     :string
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class TreatmentAction < ApplicationRecord

  has_many(:fee_schedules, foreign_key: "treatment_id", dependent: :destroy)
  
end
