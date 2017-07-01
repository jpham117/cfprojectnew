Rails.application.routes.draw do
  resources :products
  
  get 'pages/about'

  get 'pages/contact'
  
  get 'pages/index'

  root 'pages#landing_page'
end
