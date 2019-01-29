Rails.application.routes.draw do
  devise_for :users
  get 'users/:id/posts' => 'users#posts', :as => :user_posts
  
  resources :categories
  resources :posts do
    resources :comments
  end
  
  root 'posts#index'
  
end
