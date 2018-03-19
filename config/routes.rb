Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  get 'users/new'

  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/contact'
  resources :tweets do
  end
 resources :games, only: [:show, :index]
end

