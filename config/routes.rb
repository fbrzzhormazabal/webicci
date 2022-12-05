Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  

  get "/bienvenida", to: "inicio#index"
  
  get "students/new", to:"students#new"
  get "students/:id", to:"students#show"
  get "students/:id/edit", to:"students#edit"
  
  patch "students/:id", to:"students#update", as: :student
  
  post "students", to:"students#create"

  delete "students/:id", to:"students#destroy"

end
