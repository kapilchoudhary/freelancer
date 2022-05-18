Rails.application.routes.draw do
  
  root "home#index"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/user/:id/profile', to: 'profile#show', as: 'profile_show'
end
