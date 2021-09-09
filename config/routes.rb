Rails.application.routes.draw do
  root 'welcome#index'
  #sign in routes
  get 'log_in', to: 'sessions#new'
  post 'log_in', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  #sign up routes
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  #password routes
  get 'password', to: 'passwords#edit', as: 'edit_password'
  patch 'password', to: 'passwords#update'
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'
end