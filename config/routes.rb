Rails.application.routes.draw do
  get 'product_categories/index'

  get 'product_categories/show'

  get 'cart_items/userIndex'


#Product routes
  resources :products, only: [:index, :show]

#Product  categories routes
  resources :product_categories, only: [:index, :show]

#Authentification
  devise_for :users
  root to: 'products#index'
end
