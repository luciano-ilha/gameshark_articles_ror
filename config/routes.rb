Rails.application.routes.draw do
  root 'articles#index'

  resources :users, only: [:new, :create, :destroy]
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  
  resources :articles do
    member do
      put "like" => "articles#upvote"
      put "unlike" => "articles#downvote"
    end
  end

  resources :categories, only: [:show]
end
