Rails.application.routes.draw do
  resources :products
  get 'pages/about'

  get 'pages/contact'
  
  get 'pages/index'

  root 'pages#home'
end
