Rails.application.routes.draw do
  root 'restaurants#index'
  get 'restaurants/index'

  resources :restaurants

end
