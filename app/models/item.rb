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

class Item < ActiveRecord::Base
  belongs_to :container
  validates :name, presence: true
  validates :quantity, numericality: { greater_than: 0 }

  fuzzily_searchable :name
end
