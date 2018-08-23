Rails.application.routes.draw do
  resources :users
  resources :patients
  resources :appointments
  resources :practitioners, only: [:index, :show, :new, :create]
  resources :departments, only: [:index, :show]
  resources :clinics, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


    # create the user
    get "/signup", to: 'users#new', as: 'signup'

    # session functionality
    get "/login",     to: 'sessions#new',     as: 'login'
    post "/sessions", to: "sessions#create",  as: 'sessions'
    post "/logout",   to: "sessions#destroy", as: 'logout'




  end
