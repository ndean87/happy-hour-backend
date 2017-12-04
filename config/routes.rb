Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :venues, only: [:new, :create, :edit, :update] do
    resources :comments, only: [:index, :create]
  end

  resources :specials, only: [:new, :create, :edit, :update]

  get '/venues/new', to: 'venues#new'
  get '/venues', to: 'venues#index'
  get '/specials', to: 'specials#index'


  root 'venues#index'
end
