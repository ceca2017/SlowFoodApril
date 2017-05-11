Rails.application.routes.draw do
  get 'restaurants/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'home/index'
  root controller: :home, action: :index
  resources :restaurants, only: [:show]

end
