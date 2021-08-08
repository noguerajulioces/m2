# frozen_string_literal: true

Rails.application.routes.draw do
  resources :properties
  resources :cities
  resources :amenities
  devise_for :users
  resources :users
  root 'home#index'
end
