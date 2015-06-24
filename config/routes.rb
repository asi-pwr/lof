Rails.application.routes.draw do
  root 'containers#index'
  
  resources :containers, only: [:index, :show]
end
