Rails.application.routes.draw do
  get 'ran_array', to: 'ran_array#index'
  get 'ran_array/:id', to: 'ran_array#show'
  post 'ran_array/:array_length', to: 'ran_array#create'
end
