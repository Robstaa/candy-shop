Rails.application.routes.draw do
  get 'product_categories/index'

  get 'product_categories/show'

  get 'cart_items/userIndex'

  post '/cart_item', to: 'cart_items#create'

  delete '/cart_item', to: 'cart_items#destroy'
#Product routes
  resources :products, only: [:index, :show]

#Product  categories routes
  resources :product_categories, only: [:index, :show]

#Authentification
  devise_for :users
  root to: 'products#index'
end
