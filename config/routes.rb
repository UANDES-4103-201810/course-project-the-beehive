Rails.application.routes.draw do
  resources :promises
  resources :profiles
  resources :projects
  resources :users

  root 'main_page#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
