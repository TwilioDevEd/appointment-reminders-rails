# frozen_string_literal: true

Rails.application.routes.draw do
  resources :appointments
  root 'appointments#welcome'
end
