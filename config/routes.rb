Rails.application.routes.draw do

  get 'care_takings/new'
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
  
  resources :sleeps, only: [:destroy]
  resources :breast_feedings, only: [:destroy]
  resources :bottle_feedings, only: [:destroy]
  resources :diapers, only: [:destroy]
  resources :users, only: [:show]
end
