Rails.application.routes.draw do
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"
  get 'tasks', to: 'tasks#index', as: :task
  get 'tasks/:id', to: 'tasks#show', as: :show_task
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
