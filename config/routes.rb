Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'


  resources :users, :only => [:show]
  resource :user, :only => [] do
    member do
      put :update, :as => :update_profile
      get :edit
      get :me
    end
  end

  resources :messages


end
