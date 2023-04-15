# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :tenants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'apartments#index'

  resources :sys_admins
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :apartments, shallow: true do
    resources :units
  end
end
