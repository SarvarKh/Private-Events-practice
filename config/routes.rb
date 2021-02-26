Rails.application.routes.draw do
  # get 'sessions/new'
  resources :sessions
  root "users#index"
  resources :users
  resources :events
end
