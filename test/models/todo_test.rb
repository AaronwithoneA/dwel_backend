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

require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
