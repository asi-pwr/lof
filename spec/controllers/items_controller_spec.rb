# frozen_string_literal: true
require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
    it "checks if ItemsController returns JSON" do
        post :create, {item: {name: "RandomName", quantity: 50, container_id: 1}}
        expect(response.content_type).to eq("application/json")
    end
end
