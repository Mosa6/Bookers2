Rails.application.routes.draw do
  root to: 'homes#top'
  get "homes/about" => "homes#about"
  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :update, :destroy]
  resources :users, only: [:show, :index, :edit, :update]
end
