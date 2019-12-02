Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :babies, only: [:show, :create, :new] do
      resources :breast_feedings, only: [:create, :new, :show, :index]
      resources :bottle_feedings, only: [:create, :new, :show, :index]
  end
  resources :breast_feedings, only: [:destroy]
  resources :bottle_feedings, only: [:destroy]
  resources :users, only: [:show]
end
