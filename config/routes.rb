# == Route Map
#
#   Prefix Verb  URI Pattern          Controller#Action
#     root GET   /                    users#index
#    users GET   /users(.:format)     users#index
#          POST  /users(.:format)     users#create
# new_user GET   /users/new(.:format) users#new
#     user GET   /users/:id(.:format) users#show
#          PATCH /users/:id(.:format) users#update
#          PUT   /users/:id(.:format) users#update

Rails.application.routes.draw do


  root :to => 'users#index'
  resources :users, :except => [:edit, :destroy]


end
