Rails.application.routes.draw do

  devise_for :users
  root to: 'babies#show'

  resources :babies, only: [:show, :create, :new] do
      resources :breast_feedings, only: [:create, :new]
      resources :bottle_feedings, only: [:create, :new]
      resources :feedings, only: [:index]
  end

  resources :feedings, only: [:destroy]
  resources :users, only: [:show]
end
