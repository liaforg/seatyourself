Rails.application.routes.draw do

  root 'restaurants#index'
  get '/search' => 'restaurants#index'

  resources :restaurants

  resource :users, only: %i(new create)
  resource :sessions, only: %i(new create destroy)


end
