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
class PayerPlan < ApplicationRecord

  belongs_to(:payer)

  has_many(:fee_schedules, dependent: :destroy)

  has_many(:patients, dependent: :destroy)


end
