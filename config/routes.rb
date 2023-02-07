Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:new,  :create]
  resources :tasks
end
