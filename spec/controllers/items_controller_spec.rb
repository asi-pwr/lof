# frozen_string_literal: true
require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  before(:each) do
    @item = FactoryGirl.create(:item)
  end
  it 'checks if ItemsController create action responds to JSON' do
    post :create, item: { name: 'Any Name', quantity: 2, container_id: 3 }, format: :json
    expect(response).to have_http_status(:created)
    expect(response.content_type).to eq('application/json')
  end

  it 'checks if ItemsController update action responds to JSON' do
    put :update, id: @item.id, item: { name: 'Any Name', quantity: 2, container_id: 3 }, format: :json
    expect(response).to have_http_status(:updated)
    expect(response.content_type).to eq('application/json')
  end
end
