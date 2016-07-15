Rails.application.routes.draw do
  root 'application#index'

  get 'login', to: 'sessions#new'
  get 'register', to: 'users#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get 'update-password', to: 'users#password'
  patch 'update-password', to: 'users#update_password'
  get '/search', to: 'searches#query'

  resources :users, except:[:new]

  resources :recipes do
    resources :recipe_ingredients, only: [:create, :new]
    resources :ratings, only: [:create, :new]
  end

  resources :recipe_ingredients, only: [:edit, :update, :destroy]
  resources :categories, only:[:index, :show]

  resources :ingredients, only: [:show]
  # resources :recipes do
  #   resources :ratings, shallow: true
  # end
end
