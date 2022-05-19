Rails.application.routes.draw do
  
  root "home#index"
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/filter', to: 'home#filter', as: 'freelancer_filter'

  get '/user/:id/profile/show', to: 'profile#show', as: 'profile_show'
  get '/user/profile/edit', to: 'profile#edit', as: 'profile_edit'
  put '/user/profile/update', to: 'profile#update', as: 'profile_update'
end
