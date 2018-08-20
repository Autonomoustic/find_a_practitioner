Rails.application.routes.draw do
  resources :patients
  resources :appointments
  resources :practitioners, only: [:index, :show]
  resources :departments, only: [:index, :show]
  resources :clinics, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
