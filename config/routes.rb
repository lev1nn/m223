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
  get 'users/edit'
  get 'users/edit_profile', to: 'users#edit_profile', as: 'edit_user_profile'
  patch 'users/update_profile', to: 'users#update_profile', as: 'update_user_profile'
  resources :user_sessions, only: [:new, :create, :destroy]
  resources :users, only: [:index, :new, :create, :edit, :edit_profile, :update, :destroy]
end