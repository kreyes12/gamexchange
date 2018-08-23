Rails.application.routes.draw do
  resources :consoles, only: [:index, :show]
  resources :games, only: [:index, :show]
  resources :genres, only: [:index]
  resources :user_games, only: [:new, :edit]
  resources :users, only: [:index, :show, :new, :create]
  resources :wishlists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
