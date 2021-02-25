Rails.application.routes.draw do
  root to: 'home#top'
  devise_for :users

  get 'home/about'

  resources :books, only: [:new, :create, :index, :show, :edit, :destroy, :update]
  resources :users, only: [:show, :edit, :update, :index]
end
