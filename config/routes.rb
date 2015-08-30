Rails.application.routes.draw do
  root to: 'advertisements#index'

  devise_for :users

  resources :users

  resources :advertisements

  resources :messages, except: [:destroy, :edit, :show, :update]

  get 'messages/:user_id', to: 'messages#show'
end
