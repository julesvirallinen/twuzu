Rails.application.routes.draw do
  resources :tzeets
  devise_for :users
end
