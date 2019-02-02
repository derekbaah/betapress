Rails.application.routes.draw do
  devise_for :users
  match '/users',   to: 'users#index',   via: 'get'
  match '/users/:id',     to: 'users#show',       via: 'get'
  
  resources :categories
  resources :posts do
    resources :comments
  end
  
  root 'posts#index'
  
end
