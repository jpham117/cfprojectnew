Rails.application.routes.draw do
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  
  get 'pages/about'

  get 'pages/contact'
  
  get 'pages/index'

  root 'pages#landing_page'
end
