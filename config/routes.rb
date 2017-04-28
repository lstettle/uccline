Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/events" => "events#index"
  get "/events/new" => "events#new"
  post "/events" => "events#create"
  get "/events/:id" => "events#show"
  get "/events/:id/edit" => "events#edit"
  patch "/events/:id" => "events#update"
  delete "/events/:id" => "events#destroy"


  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

end
