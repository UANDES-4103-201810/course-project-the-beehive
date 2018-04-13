Rails.application.routes.draw do
  resources :promises
  resources :profiles
  resources :projects
  resources :users

  root 'main_page#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #users
  get '/users', to: 'users#index'
  get '/users/:mail', to: 'users#show'
  post '/users', to: 'users#create'
  delete '/users/:mail', to: 'users#destroy'
  patch '/users/:mail', to: 'users#edit'

  #profiles
  get '/profiles', to: 'profiles#index'
  get '/profiles/:name', to: 'profiles#show'
  post '/profiles', to: 'profiles#create'
  delete '/profiles/:name', to: 'profiles#destroy'
  patch '/profiles/:name', to: 'profiles#edit'

  #projects
  get '/projects', to: 'projects#index'
  get '/projects/:name', to: 'projects#show'
  post '/projects', to: 'projects#create'
  delete '/projects/:name', to: 'projects#destroy'
  patch '/projects/:name', to: 'projects#edit'

  #promises
  get '/promises', to: 'promises#index'
  get '/promises/:project', to: 'promises#show'
  post '/promises', to: 'promises#create'
  delete '/promises/:project', to: 'promises#destroy'
  patch '/promises/:project', to: 'promises#edit'



end
