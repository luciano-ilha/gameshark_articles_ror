Rails.application.routes.draw do
  root 'users#index'

  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'

  # get 'users/new'
  # get 'users/create'
end
