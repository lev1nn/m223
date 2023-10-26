Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/index'
  get 'pages/secret'
  get 'user_sessions/new'
  get 'user_sessions/create'
  get 'pages/secret'
  get 'users/index'
  get 'users/new'
  get 'users/create'
  resources :user_sessions, only: [:new, :create, :destroy]
  resources :users, only: [:index, :new, :create, :edit, :update, :destroy]
end