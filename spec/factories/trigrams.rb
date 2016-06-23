# == Schema Information
#
# Table name: trigrams
#
#  id          :integer          not null, primary key
#  trigram     :string(3)
#  score       :integer
#  owner_id    :integer
#  owner_type  :string
#  fuzzy_field :string
#
# Indexes
#
#  index_by_owner   (owner_id,owner_type)
#  index_for_match  (owner_id,owner_type,fuzzy_field,trigram,score)
#

FactoryGirl.define do
  factory :trigram do
    
  end
end
