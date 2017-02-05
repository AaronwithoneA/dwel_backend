# == Schema Information
#
# Table name: todos
#
#  id          :integer          not null, primary key
#  group_id    :integer          not null
#  body        :text             not null
#  type        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :string           not null
#  resolved    :boolean
#

class Todo < ApplicationRecord
  validates :group_id, :body, :description, :type, presence: true

  belongs_to :group
  has_many :comments
end
