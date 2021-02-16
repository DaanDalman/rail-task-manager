Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # As a user, I can list tasks
  get '/tasks', to: 'tasks#index'

  # As a user, I can add a new task
    # display form
  get '/tasks/new', to: 'tasks#new'
    # post information into Database
  post '/tasks', to: 'tasks#create'

  # As a user, I can view the details of a task
  get '/tasks/:id', to: 'tasks#show', as: :task
  
  # As a user, I can edit a task (mark as completed / update title & details)
    # display the form
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit
    # update info into the database
  patch '/tasks/:id', to: 'tasks#update' 
  # As a user, I can remove a tas
  
end
