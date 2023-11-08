Rails.application.routes.draw do
  get 'carts/show'
  get 'cart_items/new'
  get 'top/main'
  get 'products/index'
  get 'products/new'
  
  post 'cart_items/new'
  
  resources :products
  resources :cart_items, only: [:new, :create, :destroy]
  resources :carts, only: [:show]
  
  root 'top#main'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
