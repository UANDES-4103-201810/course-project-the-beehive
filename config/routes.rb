Rails.application.routes.draw do
  resources :promises
  resources :profiles
  resources :projects
  resources :users

  root 'main_page#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #users
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  post '/users', to: 'users#create'
  delete '/users/:id', to: 'users#destroy'
  patch '/users/:id', to: 'users#edit'

  #profiles
  get '/profiles', to: 'profiles#index'
  get '/profiles/:id', to: 'profiles#show'
  post '/profiles', to: 'profiles#create'
  delete '/profiles/:id', to: 'profiles#destroy'
  patch '/profiles/:id', to: 'profiles#edit'

  #projects
  get '/projects', to: 'projects#index'
  get '/projects/:id', to: 'projects#show'
  post '/projects', to: 'projects#create'
  delete '/projects/:id', to: 'projects#destroy'
  patch '/projects/:id', to: 'projects#edit'

  #promises
  get '/promises', to: 'promises#index'
  get '/promises/:id', to: 'promises#show'
  post '/promises', to: 'promises#create'
  delete '/promises/:id', to: 'promises#destroy'
  patch '/promises/:id', to: 'promises#edit'



end
