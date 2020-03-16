Rails.application.routes.draw do
  resources :game_categories
  resources :ratings
  resources :reviews
  resources :categories
  resources :collections
  resources :games
  resources :users
  
  get '/reviews/game/:id', to: 'reviews#game_reviews' 
  post '/reviews/game/:id', to: 'reviews#game_reviews' 

  get '/login', to: 'auth#create'
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
