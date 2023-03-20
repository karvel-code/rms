# frozen_string_literal: true

Rails.application.routes.draw do
  resources :apartments, shallow: true do 
    resources :units
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
