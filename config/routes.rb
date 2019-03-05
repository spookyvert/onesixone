Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:show,:new, :index,:create]
  resources :posts, only: [:index, :show, :create]

  get "/users/:id/new-post/", to: "users#new_post" , :as => :new_post


  # get "/users/:id/new-post/", to: "users#create_post" , :as => :create_post

  # get '/users/:id/create_post', action: :create_post, controller: 'users'
  # resources :post_users, only: [ :new, :edit,:create,:destroy]

end
