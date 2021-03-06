Rails.application.routes.draw do
  devise_for :users
  root 'events#index'
  resources :users do
    resources :avatars, only: [:create]
  end
  resources :events
  resources :avatars, only: [:create]
end
