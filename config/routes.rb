Rails.application.routes.draw do
  namespace :admin do
    resources :users
    root to: "users#index"
  end

  root to: 'visitors#index'
  devise_for :users
  resources :users

  resources :clients
  resources :raids
  resources :raids_clients
end
