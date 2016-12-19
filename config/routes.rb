Rails.application.routes.draw do

  root to: 'landings#index'
  devise_for :users, :path => 'accounts'
  resources :users
  resources :friendships, only: [:create, :destroy]

end

# Prefix Verb   URI Pattern                       Controller#Action
#                    root GET    /                                 landings#index
#        new_user_session GET    /accounts/sign_in(.:format)       devise/sessions#new
#            user_session POST   /accounts/sign_in(.:format)       devise/sessions#create
#    destroy_user_session DELETE /accounts/sign_out(.:format)      devise/sessions#destroy
#           user_password POST   /accounts/password(.:format)      devise/passwords#create
#       new_user_password GET    /accounts/password/new(.:format)  devise/passwords#new
#      edit_user_password GET    /accounts/password/edit(.:format) devise/passwords#edit
#                         PATCH  /accounts/password(.:format)      devise/passwords#update
#                         PUT    /accounts/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /accounts/cancel(.:format)        devise/registrations#cancel
#       user_registration POST   /accounts(.:format)               devise/registrations#create
#   new_user_registration GET    /accounts/sign_up(.:format)       devise/registrations#new
#  edit_user_registration GET    /accounts/edit(.:format)          devise/registrations#edit
#                         PATCH  /accounts(.:format)               devise/registrations#update
#                         PUT    /accounts(.:format)               devise/registrations#update
#                         DELETE /accounts(.:format)               devise/registrations#destroy
#                   users GET    /users(.:format)                  users#index
#                    user GET    /users/:id(.:format)              users#show
#             friendships POST   /friendships(.:format)            friendships#create
#              friendship DELETE /friendships/:id(.:format)        friendships#destroy
