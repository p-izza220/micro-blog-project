Rails.application.routes.draw do
  # get 'posts/index'

  # get 'posts/new'

  # get 'posts/edit'

  # get 'posts/show'

  # get 'users/index'

  # get 'users/new'

  # get 'users/show'

  # get 'users/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/" 				=> "welcome#index", as: "/"

  get "/users" 			=> "users#index", as: "users"
  get "/users/new" 		=> "users#new", as: "users_new"
  post "/users" 		=> "users#create"
  get "/users/:id" 		=> "users#show", as: "users_show"
  get "/users/:id/edit" => "users#edit", as: "users_edit"
  put "/users/:id" 		=> "users#update", as: "users_update"
  patch "/users/:id"	=> "users#update"
  delete "/users/:id" 	=> "users#destroy"

  get "/sessions"		=> "sessions#new", as: "login"
  post "/sessions"		=> "sessions#create"
  delete "/sessions"  	=> "sessions#destroy", as: "logout" 

end
