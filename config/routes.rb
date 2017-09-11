Rails.application.routes.draw do

  use_doorkeeper
  resources :reports
  resources :report_type_options
  resources :report_types
  devise_for :users

  root to: 'home#index'
  get 'home/index'
end
