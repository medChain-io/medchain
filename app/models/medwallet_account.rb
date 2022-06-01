# == Schema Information
#
# Table name: medwallet_accounts
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  private_key            :string
#  public_key             :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  user_type_id           :integer
#
# Indexes
#
#  index_medwallet_accounts_on_email                 (email) UNIQUE
#  index_medwallet_accounts_on_reset_password_token  (reset_password_token) UNIQUE
#
class MedwalletAccount < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many(:patients, foreign_key: "medwallet_id", dependent: :destroy)
  has_many(:providers, foreign_key: "medwallet_id", dependent: :destroy)
  has_many(:payers, foreign_key: "medwallet_id", dependent: :destroy)
  belongs_to(:user_types, class_name: "UserType")

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
