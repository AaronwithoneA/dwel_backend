# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  token       :string           not null
#  tenant_id   :integer
#  landlord_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  address     :text             not null
#

class Group < ApplicationRecord
  validates :token, :address, presence: true

  has_many :memberships

  has_many :users,
  through: :memberships,
  source: :user

  has_many :todos
end
