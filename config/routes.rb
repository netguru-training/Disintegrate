Rails.application.routes.draw do
  root to: 'users#index'

  devise_for :users

  resources :users

  resources :advertisements

  resources :messages

end
