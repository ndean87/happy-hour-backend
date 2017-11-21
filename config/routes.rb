Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :venue, only: [:new, :create]
  resources :special, only: [:new, :create]
  resources :comment, only: [:new, :create]

  root 'venue#index'
end
