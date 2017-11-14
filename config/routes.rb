Rails.application.routes.draw do
  resources :articles
  devise_for :users
  # resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
