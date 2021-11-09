Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks
  # First we need to deply a form where the new data of a task will be inserted.
  # get 'tasks/new', to: "tasks#new", as: :new_task

  # # My Tasks page where all the tasks are.
  # get 'tasks', to: "tasks#index", as: :tasks

  # # Second the POST request to submit the form
  # post 'tasks', to: "tasks#create"

  # # Shows the details of an specific task
  # get 'tasks/:id', to: "tasks#show", as: :task

  # # Getting the task to update it
  # get 'tasks/:id/edit', to: "tasks#edit", as: :edit_task

  # # Submiting the update with a patch request
  # patch 'tasks/:id', to: "tasks#update"

  # # Deleting a task
  # delete 'tasks/:id', to: "tasks#destroy"


end
