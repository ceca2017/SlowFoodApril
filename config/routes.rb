Rails.application.routes.draw do

  get 'signup/index'

  root controller: :restaurants, action: :index
  resources :restaurants, only: [:show]
  resources :signup, only: [:index]

end
