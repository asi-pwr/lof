# frozen_string_literal: true
require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
    it "checks if ItemsController returns JSON" do
        post :create, { item: { :name "Any Name", id: 5, container_id: 3 }, format: json }
        expect(response.content_type).to eq("application/json")
    end
end
