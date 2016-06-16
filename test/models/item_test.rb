# == Schema Information
#
# Table name: items
#
#  id           :integer          not null, primary key
#  name         :string           not null
#  quantity     :integer          default(0), not null
#  container_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  attributes   :hstore
#
# Indexes
#
#  index_items_on_attributes  (attributes)
#

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
