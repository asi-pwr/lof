Rails.application.routes.draw do
  root 'containers#index'
  
  resources :containers
  
  get 'items/search/:string', to: 'items#search', as: 'search_items'
end
