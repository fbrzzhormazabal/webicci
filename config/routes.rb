Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/bienvenida", to: "inicio#index"

  get "students/new", to:"students#new"
  post "students", to:"students#create"

end
