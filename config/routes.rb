Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  

  get "/bienvenida", to: "inicio#index"
  #student CRUD
  get "students/new", to:"students#new"
  get "students/:id", to:"students#show"
  get "students/:id/edit", to:"students#edit" 
  patch "students/:id", to:"students#update", as: :student  
  post "students", to:"students#create"
  delete "students/:id", to:"students#destroy"
  #Futurestudent CRUD
  get "futurestudents/new", to:"futurestudents#new"
  get "futurestudents/:id", to:"futurestudents#show"
  get "futurestudents/:id/edit", to:"futurestudents#edit" 
  patch "futurestudents/:id", to:"futurestudents#update", as: :futurestudent  
  post "futurestudents", to:"futurestudents#create"
  delete "futurestudents/:id", to:"futurestudents#destroy"
  #teacher CRUD
  get "teachers/new", to:"teachers#new"
  get "teachers/:id", to:"teachers#show"
  get "teachers/:id/edit", to:"teachers#edit" 
  patch "teachers/:id", to:"teachers#update", as: :teacher  
  post "teachers", to:"teachers#create"
  delete "teachers/:id", to:"teachers#destroy"

end
