Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :venue, only: [:new, :create]
  resources :special, only: [:new, :create]
  resources :comment, only: [:new, :create]

  get '/venues/new', to: 'venues#new'
  get '/venues', to: 'venues#index'
  get '/specials', to: 'specials#index'


  root 'venues#index'
end
