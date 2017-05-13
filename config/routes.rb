Rails.application.routes.draw do
  root controller: :restaurants, action: :index
  resources :restaurants, only: [:show]

  get 'rest_cat', controller: :restaurants, action: :rest_cat, as: :rest_cat
end
