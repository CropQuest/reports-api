Rails.application.routes.draw do

  get '/apidocs' => redirect('/swagger/index.html?url=/apidocs/api-docs.json')

  namespace :api do
    namespace :v1, defaults: { format: 'json' } do
      resources :reports
      resources :report_types
      get 'users/profile', to: 'users#profile', as: :user_profile
      put 'users', to: 'users#update', as: :user_update
    end
  end

  namespace :admin do
    resources :report_type_options
    resources :report_types
    resources :users
  end

  resources :reports

  use_doorkeeper
  devise_for :users

  root to: 'reports#index'
end
