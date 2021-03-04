Rails.application.routes.draw do
  # get 'sessions/new'
  resources :sessions
  root "events#index"
  resources :users
  resources :events do
    resources :attendees
  end
end
