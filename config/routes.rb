Rails.application.routes.draw do

  devise_for :admins, :skip => [:registrations] 
  root to:"pages#home"

  resources :addresses, only: [:edit, :update]
  resources :buttons, only: [:edit, :update]
  resources :descriptions, only: [:edit, :update]
  resources :informations, only: [:edit, :update]
  resources :services, only: [:edit, :update]
  resources :haircuts, only: [:index, :new, :create, :edit, :update, :destroy] do
  	resources :pics
  end

	get '/archives', to: 'pics#index'
  get '/booking', to: 'pages#booking'
	
end
