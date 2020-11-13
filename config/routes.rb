Rails.application.routes.draw do
  resources :businesses
  resources :reviews
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html  

  delete '/sessions/logout', to: 'sessions#logout', as: 'logout'
  get '/sessions/new', to: 'sessions#new', as: 'new_login'
  post '/sessions', to: 'sessions#create', as: 'login'

  root to: 'businesses#index'
   get '/pages/about' => 'pages#index' 

end
