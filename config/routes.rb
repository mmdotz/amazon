Rails.application.routes.draw do

  resources :orders
  resources :items
  resources :users

  resources :orders do
    resources :lineitems
  end

  resources :lineitems do
    resources :items
  end

  get '/lineitems', to: 'lineitems#index'
  post 	'/lineitems', to: 'lineitems#create'
  patch '/checkout', to: 'orders#checkout', as: 'checkout'

  get '/login',       to: 'sessions#new',     as: 'login'
  post '/login',      to: 'sessions#create',  as: 'create_session'
  get '/logout',   to: 'sessions#destroy', as: 'logout'


  root "items#index"

end
