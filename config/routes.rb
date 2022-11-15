Rails.application.routes.draw do
  resources :recipe_foods
  resources :inventory_foods
  resources :inventories
  resources :recipes
  resources :foods
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # devise_for :users # Routes for authentication
 
  # root "foods#index"  # Defines the root path route ("/")
end
