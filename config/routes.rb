Rails.application.routes.draw do

  devise_for :users
  root to: 'babies#index'
  resources :babies, only: [:show, :create, :new] do
      resources :breast_feedings, only: [:create, :new, :show]
      resources :bottle_feedings, only: [:create, :new, :show]
  end

  resources :feedings, only: [:destroy]
  resources :users, only: [:show]
end
