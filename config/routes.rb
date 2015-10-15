Rails.application.routes.draw do


  get 'lineitems/index'

  get 'lineitems/new'

  get 'lineitems/show'

  get 'lineitems/create'

  get 'lineitems/update'

  get 'lineitems/destroy'

  resources :orders
  resources :items
  resources :users

  get '/login',       to: 'sessions#new',     as: 'login'
  post '/login',      to: 'sessions#create',  as: 'create_session'
  get '/logout',   to: 'sessions#destroy', as: 'logout'

  root "items#index"

end
