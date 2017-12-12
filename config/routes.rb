Rails.application.routes.draw do

  post 'endorsement/create'

  get 'home/index'
  resources :users
  devise_for :users
  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
