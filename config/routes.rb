Rails.application.routes.draw do
  root 'posts#index'

  devise_for :users
  resources :posts

  get 'index' => 'pages#index'
  get 'home' => 'pages#home'
  #get '/user/:id' => 'pages#profile'
  get 'explore' => 'pages#explore'
end
