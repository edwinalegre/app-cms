Rails.application.routes.draw do

  root 'home#index'
  get '/admin' => "admin#index"

  resources :websites
  resources :pages
  resources :sections

end
