Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  
  	resources :messages do 
  		collection do
  			get 'outbox'
  		end
  	end

  resources :users, :only => [:show]
  resource :user, :only => [] do
    member do
      put :update, :as => :update_profile
      get :edit
      get :me
    end
  end

end
