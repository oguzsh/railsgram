# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts do
      resources :comments
  end

  devise_for :users
  root to: 'home#index'
end
