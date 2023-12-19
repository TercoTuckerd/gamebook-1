Rails.application.routes.draw do
  devise_for :users
  #get 'statuses/index'
  root "statuses#index"
end
