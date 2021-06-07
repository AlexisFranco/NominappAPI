Rails.application.routes.draw do
  resources :ran_array, path: 'ran_array/:array_length', only: [:create]
end
