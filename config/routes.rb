Rails.application.routes.draw do
  resources :stairwalks
  resources :users
  resources :stairwalk

  root to: 'visitors#index'

  match '/visitors', to: 'visitors#set_user', via: 'post'
end
