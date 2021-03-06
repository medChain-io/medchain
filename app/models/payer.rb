# == Schema Information
#
# Table name: payers
#
#  id           :bigint           not null, primary key
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  medwallet_id :integer
#
class Payer < ApplicationRecord

  has_many(:payer_plans, dependent: :destroy)
  
end
