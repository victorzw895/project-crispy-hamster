# == Route Map
#
#   Prefix Verb   URI Pattern          Controller#Action
#     root GET    /                    users#index
#    users GET    /users(.:format)     users#index
#          POST   /users(.:format)     users#create
# new_user GET    /users/new(.:format) users#new
#     user GET    /users/:id(.:format) users#show
#          PATCH  /users/:id(.:format) users#update
#          PUT    /users/:id(.:format) users#update
#    login GET    /login(.:format)     session#new
#          POST   /login(.:format)     session#create
#          DELETE /login(.:format)     session#destroy

Rails.application.routes.draw do


  root :to => 'users#index'
  get '/users/edit' => 'users#edit', :as => :edit_user
  resources :users, :except => [:edit, :destroy, :update]
  resources :posts



  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
