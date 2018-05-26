# frozen_string_literal: true

Rails.application.routes.draw do
  get 'sessions/new'
  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/register', to: 'users#new'
  post '/register', to: 'users#create'
  get '/users/:id/settings', to: 'users#edit'

  get '/projects', to: 'projects#index'
  delete '/project/:id', to: 'projects#destroy'

  get '/projects/:id/fund', to: 'projects#new_fund'
  post '/projects/:id/fund', to: 'projects#create_fund'

  post '/users/:id/follow', to: 'users#follow'
  post '/projects/:id/favorite', to: 'projects#favorite'

  post '/users/:id/projects/new', to: 'projects#create'
  post '/projects/:project_id/promises/new', to: 'promises#create'

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
