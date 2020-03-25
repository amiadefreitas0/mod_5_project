Rails.application.routes.draw do
  resources :game_categories
  resources :ratings
  resources :reviews
  resources :collections
  resources :games
  resources :users
  
  
  get '/reviews/game/:id', to: 'reviews#game_reviews' 
  post '/reviews/game/:id', to: 'reviews#game_reviews' 

  get 'collections/:user_id/:game_id', to: 'collections#game'
  delete 'collections/:user_id/:game_id', to: 'collections#destroy'

  
  get '/login', to: 'auth#create'
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/:id', to:'categories#category_games'
end
