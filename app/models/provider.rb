# == Schema Information
#
# Table name: providers
#
#  id         :bigint           not null, primary key
#  name       :string
#  specialty  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Provider < ApplicationRecord
  has_many(:fee_schedules, dependent: :destroy)
end
