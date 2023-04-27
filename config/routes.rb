# frozen_string_literal: true

Rails.application.routes.draw do
  # devise_for :admins
  devise_for :admins, :controllers => {:registrations => "admins/registrations"}
  devise_for :tenants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'apartments#index'

  resources :apartments, shallow: true do
    resources :units
  end
end
