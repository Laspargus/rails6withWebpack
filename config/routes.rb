Rails.application.routes.draw do
  root 'home#index'
  resources :pictures, only: [:create]
  get 'profile' => 'profile#show'
  devise_for :users
  resources :users, only: [:show]
  # get 'users/:id' => 'users#show', as: :user
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
