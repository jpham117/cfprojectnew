Rails.application.routes.draw do
  get 'pages/about'

  get 'pages/contact'
  
  get 'pages/index'

  root 'pages#home'
end
