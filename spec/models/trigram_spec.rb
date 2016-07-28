# frozen_string_literal: true
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

require 'rails_helper'

RSpec.describe Trigram, type: :model do
  it 'can be created' do
    trigram = Trigram.new
    expect(trigram).not_to be_nil
  end
end
