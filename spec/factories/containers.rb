# frozen_string_literal: true
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

FactoryGirl.define do
  factory :container do
  end
end
