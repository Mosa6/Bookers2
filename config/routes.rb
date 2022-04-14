Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :update, :destroy]
  resources :users, only: [:show, :index, :edit, :update]
end
