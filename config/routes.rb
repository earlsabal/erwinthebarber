Rails.application.routes.draw do
  root to:"pages#home"

  resources :haircuts, only: [:index, :new, :create, :edit, :update, :destroy] do
  	resources :pics
  end

	get '/archives', to: 'pics#index'
end
