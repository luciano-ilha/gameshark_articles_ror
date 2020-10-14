Rails.application.routes.draw do
  root 'users#index'

  resources :users, only: [:new, :create, :destroy]
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  
  resources :articles, only: [:new, :create, :update, :destroy]
end
