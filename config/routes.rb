require 'sidekiq/web'

Rails.application.routes.draw do
  resources :products
  resources :suppliers
  resources :orders
  resources :employees
  resources :customers
  resources :payments
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :managers
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'customers#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
