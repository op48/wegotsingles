Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  
  	resources :messages do 
  		collection do
  			get 'outbox'
  		end
  	end
		

end
