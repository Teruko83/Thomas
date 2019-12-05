Rails.application.routes.draw do

  get 'badge_ownerships/show'
  get 'badge_ownerships/index'
  get 'care_takings/new'
  get 'show/sandman'
  # post 'care_takings/create', to: 'care_takings#create', as: "baby_care_takings"
  devise_for :users
  root to: 'pages#home'
  resources :babies, only: [:show, :create, :new] do
      resources :breast_feedings, only: [:create, :new, :show, :index]
      resources :bottle_feedings, only: [:create, :new, :show, :index]
      resources :sleeps, only: [:create, :new, :show, :index]
      resources :care_takings, only: [:create]
      resources :diapers, only: [:create, :new, :show, :index]
  end
  resources :feedings, only: [:destroy]
  resources :sleeps, only: [:destroy]
  resources :breast_feedings, only: [:destroy]
  resources :bottle_feedings, only: [:destroy]
  resources :diapers, only: [:destroy]
  resources :users, only: [:show]
  resources :care_takings, only: [:destroy]


end
