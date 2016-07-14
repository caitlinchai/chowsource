Rails.application.routes.draw do
  root 'application#index'
  get 'login', to: 'sessions#new'
  get 'register', to: 'users#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/recipes', to: 'recipes#index'

  resources :users do
    resources :recipes, shallow: true
  end
  resources :categories, only:[:index, :show]
  resources :ingredients
end
