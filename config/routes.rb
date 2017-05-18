Rails.application.routes.draw do
  # get 'users/index'
  root 'tzeets#index'
  match '/users', to: 'users#index', via: 'get'
  # devise_for :users, :path_prefix => 'd'
  resources :tzeets
  devise_for :users

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'logout', to: 'devise/sessions#destroy'
    get 'register', to: 'devise/registrations#new'

  end

  resources :users, :only =>[:show]
  match '/users/:id', to: 'users#show', via: 'get'



end
