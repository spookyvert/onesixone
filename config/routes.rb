Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'
  resources :users, only: [:show,:new, :index,:create,:update,:edit,:destroy]
  resources :post_users, only: [:create, :destroy]
  resources :posts, only: [:index, :show, :create, :update,:edit,:destroy]
  resources :sessions, only: [:new, :create, :destroy]
  resources :teams, only: [:index]


  resources :users do
      resources :posts do
        resources :post_users, only: [:create, :destroy]
      end
    end

  get "/users/:id/new-post/", to: "users#new_post" , :as => :new_post
  get 'signup', to: 'users#new', as: 'signup/'
  get 'login', to:'sessions#new', as:'login'
  get 'logout', to:'sessions#destroy', as:'logout'



  # get "/users/:id/new-post/", to: "users#create_post" , :as => :create_post

  # get '/users/:id/create_post', action: :create_post, controller: 'users'
  # resources :post_users, only: [ :new, :edit,:create,:destroy]

end
