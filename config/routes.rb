Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:show,:new, :index,:create]
  resources :posts, only: [:index, :show]
  get "/users/:id/new-post/", to: "users#new_post" , :as => :new_post
  # resources :post_users, only: [ :new, :edit,:create,:destroy]

end
