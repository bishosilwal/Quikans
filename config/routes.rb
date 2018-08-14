Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :question, only: [ :create, :show, :update]
  get 'home/index'
  root 'home#index'
end
