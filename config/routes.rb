Rails.application.routes.draw do

  root 'home#index'
  get '/admin' => "admin#index"

  get '/login'  => 'sessions#new', as: :login
  post '/login'  => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: :logout

  resources :websites
  resources :pages
  resources :sections
  resources :users
  resources :sessions

end
