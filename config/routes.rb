Rails.application.routes.draw do

  root 'homepage#index'

  get "dashboard" => 'dashboard#index'

  resources :registrations, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  resource :profile


end
