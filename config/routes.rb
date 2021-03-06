Rails.application.routes.draw do
  resources :favorites
  resources :reviews
  resources :restaurants
  
  
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'application#logged_in?'
  get '/favorites', to: 'favorites#index'
  
  resources :users, only: [:create]
end
