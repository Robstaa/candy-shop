Rails.application.routes.draw do
  get 'cart_items/userIndex'


#Product routes
  # get '/products/:id', to: 'products#show'

  # get '/products', to: 'products#index'

  # get '/products/filter', to: 'products#filter'
  resources :products

  devise_for :users
  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
