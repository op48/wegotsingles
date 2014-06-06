Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  
  	resources :messages do 
  		collection do
  			get 'outbox'
  		end
  	end

  resources :users, :only => [:show]
  resource :user, :only => [:edit, :update] do
    member do
      get 'me'
    end
  end

  resources :messages

end
