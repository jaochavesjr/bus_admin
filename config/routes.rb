Rails.application.routes.draw do

  namespace :admins do
    get 'dashboard/index'
    resources :admins
    resources :clients
    resources :cars
    resources :drivers
    resources :travels
  end
  get '/cities_by_state', to: 'admins/travels#cities_by_state'
  devise_for :admins

  root to: 'admins/dashboard#index'
end
