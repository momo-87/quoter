# frozen_string_literal: true

Rails.application.routes.draw do
  get '/up', to: 'health#up' # Health check endpoint
  root to: 'pages#home'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :quotes

  resources :quotes do
    resources :line_item_dates, except: %i[index show] do
      resources :line_items, except: %i[index show]
    end
  end
end
