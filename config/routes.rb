Rails.application.routes.draw do

  get '/apidocs' => redirect('/swagger/index.html?url=/apidocs/api-docs.json')

  namespace :api do
    namespace :v1, defaults: { format: 'json' } do
      resources :reports
      resources :report_types
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
