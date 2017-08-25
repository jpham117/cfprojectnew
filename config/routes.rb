Rails.application.routes.draw do
  devise_for :users

  resources :orders, only: [:index, :show, :create, :destroy]
  
  resources :products do
    resources :comments
  end
  resources :users
  
  get 'static_pages/about'

  get 'static_pages/contact'
  
  get 'static_pages/index'

  root 'static_pages#landing_page'
  
  post 'static_pages/thank_you'
end
