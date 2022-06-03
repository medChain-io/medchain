# == Schema Information
#
# Table name: user_types
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class UserType < ApplicationRecord
  has_many(:medwallet_accounts, foreign_key: "user_type_id", dependent: :destroy)

end
