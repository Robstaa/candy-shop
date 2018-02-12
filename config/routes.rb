Rails.application.routes.draw do
  get 'cart_items/userIndex'

  get 'cart_items/new'

  get 'cart_items/create'

  get 'cart_items/edit'

  get 'cart_items/update'

  get 'cart_items/delete'

  get 'products/show'

  get 'products/index'

  get 'products/filter'

  devise_for :users
  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
