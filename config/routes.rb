Devise::Application.routes.draw do

  namespace :api do

    resources :galleries

    resources :graphics

    resources :texts

    resources :contacts

    resources :context_elements

    resources :join_point_categories

    resources :point_categories

    resources :points

    resources :new_items

    resources :new_categories

    #resources :home

    #match '/signup',  :to => 'users#sign_up'
    #match '/signin',  :to => 'sessions#new'
    #match '/signout', :to => 'sessions#destroy'

    get "admin_pages/index"

    #get "home/index"

    #authenticated :user do
    #  root :to => 'admin_pages#index'
    #end

    root :to => "home#index"

    devise_for :users

    #match '', :to => 'home#index'

  end

  match "*path", :to => "home#index"

end
#
#
#Devise::Application.routes.draw do
#
#  resources :galleries
#
#  resources :graphics
#
#  resources :texts
#
#  resources :contacts
#
#  resources :context_elements
#
#  resources :join_point_categories
#
#  resources :point_categories
#
#  resources :points
#
#  resources :new_items
#
#  resources :new_categories
#
#  match '/signup',  :to => 'users#sign_up'
#  match '/signin',  :to => 'sessions#new'
#  match '/signout', :to => 'sessions#destroy'
#
#  get "admin_pages/index"
#
#  get "home/index"
#
#  authenticated :user do
#    root :to => 'admin_pages#index'
#  end
#
#  devise_for :users
#
#  root :to => "home#index"
#
#  match "*path", :to => "home#index"
#
#end
