Rails.application.routes.draw do
  resources :paitents
  resources :appointments
  resources :practitioners
  resources :departments
  resources :clinics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
