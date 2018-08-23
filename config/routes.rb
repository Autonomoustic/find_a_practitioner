Rails.application.routes.draw do
  resources :patients
  resources :appointments
  resources :practitioners, only: [:index, :show] do
    get "appointments/new", to: 'appointments#new'
  end
  resources :departments, only: [:index, :show]
  resources :clinics, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
