Rails.application.routes.draw do
  get 'staff/index', to: 'staff#index', as: 'staff'
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
  get '/admin', to: 'admin_dashboard#index', as: 'admin_dashboard'
  get '/admin/user-list', to: 'admin_dashboard#user_list', as: 'user_list'
  get '/admin/edit-user/:id', to: 'admin_dashboard#edit_user', as: 'edit_user'
  patch '/admin/update-user/:id', to: 'admin_dashboard#update', as: 'update_user'
end
