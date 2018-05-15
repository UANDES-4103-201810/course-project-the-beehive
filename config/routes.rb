Rails.application.routes.draw do
  get '/home', to: 'pages#home'
  get '/login', to: 'pages#login'
  get '/about', to: 'pages#about'
  get '/register', to: 'users#new'
  post '/register', to: 'users#create'
  get '/users/:id/settings', to: 'users#edit'
  resources :users do
    resources :projects do
      resources :promises
    end
  end

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
