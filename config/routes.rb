Rails.application.routes.draw do
  root to: 'shoppers#index'
  resources :carts
  resources :order_items
  resources :shopper_infos
  # devise_for :shoppers
  resources :assignments
  resources :orders
  resources :items
  resources :stores
  resources :cart_items
  resources :drivers
  resources :shoppers
  post '/create-checkout-session', to: ''
  post '/login', to: 'sessions#create'
  get 'auth/google_oauth2/callback', to: 'sessions#GoogleAuth'
  get 'auth/failure', to: redirect('/')
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
