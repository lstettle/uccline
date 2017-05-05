Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get "/" => "pages#home"
  get "/about" => "pages#about"
  get "/contact" => "pages#contact"
  get "/staff" => "pages#staff"

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




  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

end
