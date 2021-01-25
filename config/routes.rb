Rails.application.routes.draw do

  namespace :admins do
    get 'dashboard/index'
    resources :admins
  end
  devise_for :admins

  root to: 'admins/dashboard#index'
end
