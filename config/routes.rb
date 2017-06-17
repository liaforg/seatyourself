Rails.application.routes.draw do
  get 'restaurants/index', to: 'restaurants#index'

  resources :restaurants do
  end

  resource :users, only: %i(new create)
  resource :sessions, only: %i(new create destroy)

  root 'restaurants#index'
end
