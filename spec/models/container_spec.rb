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

RSpec.describe Container, type: :model do
  it 'can be created' do
    container = Container.new
    expect(container).not_to be_nil
  end
end
