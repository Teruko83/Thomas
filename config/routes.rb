Rails.application.routes.draw do

  get 'diapers/index'
  get 'diapers/new'
  get 'diapers/create'
  get 'diapers/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :babies, only: [:show, :create, :new] do
      resources :breast_feedings, only: [:create, :new, :show, :index]
      resources :bottle_feedings, only: [:create, :new, :show, :index]
      resources :diapers, only: [:create, :new, :show, :index]
  end
  resources :breast_feedings, only: [:destroy]
  resources :bottle_feedings, only: [:destroy]
  resources :diapers, only: [:destroy]
  resources :users, only: [:show]
end
