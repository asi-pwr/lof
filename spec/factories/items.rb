# frozen_string_literal: true
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
#  features     :jsonb            default({}), not null
#
# Indexes
#
#  index_items_on_features  (features)
#

FactoryGirl.define do
  factory :item do
    name 'random name'
    quantity 1
    container_id 1
  end
end
