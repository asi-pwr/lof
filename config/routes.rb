# frozen_string_literal: true
Rails.application.routes.draw do
  root 'containers#index'

  resources :containers
  resources :items

  get 'items/search/:string', to: 'items#search', as: 'search_items'
end
