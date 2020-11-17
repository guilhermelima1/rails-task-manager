Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #Create Read Update Delete
  #get 'path', to: 'controller#action'

  # #See all the restaurants
  get '/tasks', to: 'tasks#index'

  # #Create a new restaurant
  get '/tasks', to: 'tasks#new' # to display the form
  post '/tasks', to: 'tasks#create'

  # #See details about a specif restaurant
  get '/tasks/:id', to: 'tasks#show'



  # #Update a restaurant
  get '/tasks/:title/edit', to: 'tasks#edit'
  patch 'tasks/:title', to: 'tasks#update'

  # #Delete a restaurant
  delete 'tasks/:title', to: 'tasks#destroy'
end
