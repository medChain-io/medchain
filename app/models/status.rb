# == Schema Information
#
# Table name: statuses
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Status < ApplicationRecord
  has_many(:treatments, class_name: "CarePlan", dependent: :destroy)
  validates(:name, presence: true)
end
