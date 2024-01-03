Rails.application.routes.draw do
  devise_for :users
  #get 'statuses/index'
  root to: 'statuses#index'
  resources :users
  resources :statuses
  resources :games
end