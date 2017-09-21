Rails.application.routes.draw do

  get 'index' => 'pages#index'

  get 'home' => 'pages#home'

  get 'profile' => 'pages#profile'

  get 'explore' => 'pages#explore'

  root 'posts#index'

  resources :posts
  devise_for :users
end
