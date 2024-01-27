Rails.application.routes.draw do
  devise_for :users
  #get 'statuses/index'
  root to: 'statuses#index'
  resources :users
  resources :games #do
    resources :statuses
  #end
end