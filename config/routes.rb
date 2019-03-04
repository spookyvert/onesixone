Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:show,:new, :index,:create, :create_post]
  resources :posts, only: [:index, :show]
  # resources :post_users, only: [ :new, :edit,:create,:destroy]

end
