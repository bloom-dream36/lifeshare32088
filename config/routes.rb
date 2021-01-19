Rails.application.routes.draw do
  
  devise_for :users
  root to: 'calendars#index'
  resources :calendars
  resources :users, only: [:index, :edit, :update]
  resources :groups,only: [:new, :create, :edit, :update]
end
