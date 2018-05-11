Rails.application.routes.draw do
  get 'pages/home', to: 'pages#home'
  get 'pages/login', to: 'pages#login'
  get 'pages/register', to: 'pages#register'
  resources :users do
    resources :projects do
      resources :promises
    end
  end

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
