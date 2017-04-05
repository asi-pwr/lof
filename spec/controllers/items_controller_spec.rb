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
    expect(response).to have_http_status(:ok)
    expect(response.content_type).to eq('application/json')
  end

  it 'checks if ItemsController destroy action responds to JSON' do
    expect(Item.all).to include(@item)
    delete :destroy, id: @item.id, format: :json
    expect(response).to have_http_status(:no_content)
    expect(response.content_type).to eq('application/json')
    expect(Item.all).not_to include(@item)
  end

  it 'checks if ItemsController index action responds to JSON' do
    get :index, format: :json
    expect(response).to have_http_status(:ok)
    expect(response.content_type).to eq('application/json')
  end
end
