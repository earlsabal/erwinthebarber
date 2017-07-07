Rails.application.routes.draw do
  devise_for :admins, :skip => [:registrations] 
  root to:"pages#home"

  resources :haircuts, only: [:index, :new, :create, :edit, :update, :destroy] do
  	resources :pics
  end

	get '/archives', to: 'pics#index'
end
