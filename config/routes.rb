Rails.application.routes.draw do
  get 'sessions/index'

  get 'sessions/show'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :orders
  resources :items
  resources :users

  root "items#index"

end
