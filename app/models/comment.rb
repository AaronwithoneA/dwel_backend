# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  todo_id    :integer          not null
#  comment    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
  validates :comment, :username, :todo_id, presence: true

  # belongs_to :user
  belongs_to :todo

end
