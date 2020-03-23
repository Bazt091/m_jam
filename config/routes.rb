Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  get 'users', to: 'users#index' 
  get 'users/:id', to: 'users#user_type', as: 'user_type'
  resources :stories
  
  root 'home#index'

end
