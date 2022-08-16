Rails.application.routes.draw do
  post '/projects/:id/service/:service', to: 'projects#addService', as: 'add_project_service'
  resources :contacts
  resources :projects
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "projects#dashboard"
end
