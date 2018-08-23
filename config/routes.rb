Rails.application.routes.draw do
  resources :consoles, only: [:index, :show]
  resources :games, only: [:index, :show]
  resources :genres, only: [:index]
  resources :user_games
  resources :users
  resources :wishlists

  root 'application#hello'
   get '/login' => 'sessions#new'
   post '/login' => 'sessions#create'
   post '/logout' => 'sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
