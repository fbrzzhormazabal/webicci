Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "inicio#index"

  get "/bienvenida", to: "inicio#index"
  get "/mallas", to: "mallas#index"
  get "/salas", to: "salas#index"
  #student CRUD
  get "students", to:"students#index"
  get "students/new", to:"students#new"
  get "students/:id", to:"students#show"
  get "students/:id/edit", to:"students#edit" 
  patch "students/:id", to:"students#update", as: :student  
  post "students", to:"students#create"
  delete "students/:id", to:"students#destroy"
  #Futurestudent CRUD
  get "futurestudents", to:"futurestudents#index"
  get "futurestudents/new", to:"futurestudents#new"
  get "futurestudents/:id", to:"futurestudents#show"
  get "futurestudents/:id/edit", to:"futurestudents#edit" 
  patch "futurestudents/:id", to:"futurestudents#update", as: :futurestudent  
  post "futurestudents", to:"futurestudents#create"
  delete "futurestudents/:id", to:"futurestudents#destroy"
  #teacher CRUD
  get "teachers", to:"teachers#index"
  get "teachers/new", to:"teachers#new"
  get "teachers/:id", to:"teachers#show"
  get "teachers/:id/edit", to:"teachers#edit" 
  patch "teachers/:id", to:"teachers#update", as: :teacher  
  post "teachers", to:"teachers#create"
  delete "teachers/:id", to:"teachers#destroy"
  #guest CRUD
  get "guests", to:"guests#index"
  get "guests/new", to:"guests#new"
  get "guests/:id", to:"guests#show"
  get "guests/:id/edit", to:"guests#edit" 
  patch "guests/:id", to:"guests#update", as: :guest  
  post "guests", to:"guests#create"
  delete "guests/:id", to:"guests#destroy"

end
