Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'

  resource :user, :only => [:show, :edit, :update] do
    member do
      get 'me'
    end
  end

  resources :users
  resources :messages

  
end
