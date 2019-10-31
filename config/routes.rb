Rails.application.routes.draw do
 # mount_devise_token_auth_for 'User', at: 'auth'
  resources :categories
  resources :books
  resources :users  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'hello/index', to: 'hello#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  root to: 'hello#index'
end
