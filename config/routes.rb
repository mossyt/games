Rails.application.routes.draw do
    devise_for :admins
  devise_for :users
  get 'users/new'

  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/charts'
  resources :tweets 
 resources :games, only: [:show, :index]
 resources :products
 resources :order_items
 resource :carts, only: [:show]

end

