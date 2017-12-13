Rails.application.routes.draw do

  

  get 'home/index'
  resources :users
  devise_for :users
  root to: 'home#index'

  resources :skills do
    post 'endorsement/create'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
