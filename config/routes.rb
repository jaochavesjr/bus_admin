Rails.application.routes.draw do

  namespace :admins do
    get 'dashboard/index'
    resources :admins
    resources :clients
    resources :cars
    resources :drivers
    resources :travels
  end
  devise_for :admins

  root to: 'admins/dashboard#index'
end
