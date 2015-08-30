Rails.application.routes.draw do
  root to: 'advertisements#index'

  devise_for :users

  resources :users

  resources :advertisements

  resources :comments, only: :create

  resources :applies, only: [:create]

  resources :messages, except: [:destroy, :edit, :show, :update]

  get 'messages/:user_id', to: 'messages#show', as: :message
end
