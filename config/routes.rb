# frozen_string_literal: true

Rails.application.routes.draw do
  get 'sessions/new'
  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/register', to: 'users#new'
  post '/register', to: 'users#create'
  get '/users/:id/settings', to: 'users#edit'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  shallow do
    resources :users do
      resources :projects do
        resources :promises
      end
    end
  end

  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
