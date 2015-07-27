# == Schema Information
#
# Table name: containers
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  ancestry    :string
#
# Indexes
#
#  index_containers_on_ancestry  (ancestry)
#

class Container < ActiveRecord::Base
  has_ancestry
  has_many :items
end
