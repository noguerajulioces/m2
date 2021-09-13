# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  scope module: 'admin', path: 'nimda', as: 'admin' do
    resources :users
    resources :faqs
    resources :amenities
    resources :cities
  end

  resources :properties
  resources :cities
  devise_for :users

  resources :users
  resources :user_devices, only: :destroy
end
