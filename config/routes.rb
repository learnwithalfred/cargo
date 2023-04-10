Rails.application.routes.draw do
  get 'gps/my_records', to: 'gps#my_records', as: 'my_records'
  resources :gps
  # Home page
  root "homes#index"

  # About page
  get '/about', to: 'homes#about', as: 'about'

  # User authentication
  devise_for :users, path: 'auth', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    password: 'secret',
    confirmation: 'verification',
    unlock: 'unblock',
    registration: 'register',
    sign_up: 'signup'
  }

  get '/driver-dashboard', to: 'driver_dashboard#index', as: 'driver_dashboard'
  get '/admin-dashboard', to: 'admin_dashboard#index', as: 'admin_dashboard'
end
