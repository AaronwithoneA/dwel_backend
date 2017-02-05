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

require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
