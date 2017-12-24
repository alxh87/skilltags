Rails.application.routes.draw do


  root "users#profile"
  
  devise_for :users
  
  get 'users/:id' => 'users#show'

  resources :users, only: [:show, :index] do
	  resources :skills, only: [:create] do
	    post 'endorsements/create'
	    post 'create'
	  end
	end

	resources :skill_tags, only: [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
