Rails.application.routes.draw do

  namespace :admins do
    get 'dashboard/index'
    resources :admins
    resources :clients
  end
  devise_for :admins

  root to: 'admins/dashboard#index'
end
