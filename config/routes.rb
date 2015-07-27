Rails.application.routes.draw do
  root 'containers#index'
  
  resources :containers, only: [:index, :show, :new]

  get 'items/search/:string', to: 'items#search', as: 'search_items'
end
