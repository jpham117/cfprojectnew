Rails.application.routes.draw do
  devise_for :users

  resources :orders, only: [:index, :show, :create, :destroy]
  
  resources :products do
    resources :comments
  end
  resources :users
  
  get 'pages/about'

  get 'pages/contact'
  
  get 'pages/index'

  root 'pages#landing_page'
  
  post 'pages/thank_you'
end
