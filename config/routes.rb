Rails.application.routes.draw do
  namespace :api do
    jsonapi_resources :users, only: [:show]
  end
end
