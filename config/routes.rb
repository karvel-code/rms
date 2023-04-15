# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admins
  # devise_for :admins, path: 'admin', path_names: {
  #   sign_in: 'login',
  #   sign_out: 'logout',
  #   password: 'secret',
  #   confirmation: 'verification',
  #   unlock: 'unblock',
  #   registration: 'register',
  #   sign_up: 'signup'
  # }
  devise_for :tenants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'apartments#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :apartments, shallow: true do
    resources :units
  end
end
