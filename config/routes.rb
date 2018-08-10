Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'question/:id', to: 'question#show'
  get 'home/index'
  root 'home#index'
end
