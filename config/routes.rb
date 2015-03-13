Rails.application.routes.draw do
  resources :appointments
  
  # You can have the root of your site routed with "root"
  root 'appointments#welcome'
end
