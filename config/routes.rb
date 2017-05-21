Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get "/" => "pages#home"
  get "/about" => "pages#about"
  get "/contact" => "pages#contact"
  get "/staff" => "pages#staff"
  get "/boards" => "pages#boards"
  get "/locations" => "pages#locations"
  get "/blogs" => "pages#blogs"
  get "/message" => "pages#message"

  get "/events" => "events#index"
  get "/events/new" => "events#new"
  post "/events" => "events#create"
  get "/events/:id" => "events#show"
  get "/events/:id/edit" => "events#edit"
  patch "/events/:id" => "events#update"
  delete "/events/:id" => "events#destroy"

  get "/categories" => "categories#index"
  get "/categories/new" => "categories#new"
  post "/categories" => "categories#create"
  get "/categories/:id" => "categories#show"

  get "/tasks" => "tasks#index"
  get "/tasks/new" => "tasks#new"
  post "/tasks" => "tasks#create"
  get "tasks/:id" => "tasks#show"
  get "/tasks/:id/edit" => "tasks#edit"
  patch "/tasks/:id" => "tasks#update"
  delete "/tasks/:id" => "tasks#destroy"

  get "/donations" => "donations#index"
  get "/donations/new" => "donations#new"
  post "/donations" => "donations#create"
  get "/donations/:id" => "donations#show"
  get "/donations/:id/edit" => "donations#edit"
  patch "/donations/:id" => "donations#update"
  delete "/donations/:id" => "donations#destroy"

  get "/tickets" => "tickets#index"
  get "/tickets/new" => "tickets#new"
  post "/tickets/:id" => "tickets#create"
  get "/tickets/:id" => "tickets#show"
  get "/tickets/:id/edit" => "tickets#edit"
  patch "/tickets/:id" => "tickets#update"
  delete "/tickets/:id" => "tickets#destroy"

  get "/users" => "users#index"
  get "users/:id" => "users#show"


  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

end
