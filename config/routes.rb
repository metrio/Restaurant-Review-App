Rails.application.routes.draw do
  resources :businesses
  resources :reviews
  resources :users
  resources :sessions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
