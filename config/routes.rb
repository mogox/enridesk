Rails.application.routes.draw do
  root 'home#index'
  resources :filters, only: [:show]
  resources :cases, only: [:show, :update]
  resources :labels, only: [:create]
end
