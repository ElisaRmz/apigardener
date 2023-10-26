Rails.application.routes.draw do
  resources :seeded_plants
  resources :seeded_plant_care_tasks
  resources :plant_cares
  resources :plants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
