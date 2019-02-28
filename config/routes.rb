Rails.application.routes.draw do
  devise_for :users
  match '/users',   to: 'users#index',   via: 'get'
  match '/users/:id',     to: 'users#show',       via: 'get'
  
  resources :users
  resources :categories
  resources :posts do
    member do
      put "like", to: "posts#upvote"
    end
    resources :comments
  end
  
  root 'posts#index'
  
end
