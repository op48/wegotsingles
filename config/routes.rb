Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  resource :user
  resources :users
  resources :messages
end
