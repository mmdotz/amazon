Rails.application.routes.draw do

  resources :orders
  resources :items
  resources :users

  get '/lineitems', to: 'lineitems#index'
  post 	'/lineitems', to: 'lineitems#create'

  get '/login',       to: 'sessions#new',     as: 'login'
  post '/login',      to: 'sessions#create',  as: 'create_session'
  get '/logout',   to: 'sessions#destroy', as: 'logout'


  root "items#index"

end
