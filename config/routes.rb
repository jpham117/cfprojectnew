Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  
  get 'pages/about'

  get 'pages/contact'
  
  get 'pages/index'

  root 'pages#landing_page'
  
  post 'pages/thank_you'
end
