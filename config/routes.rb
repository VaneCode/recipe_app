Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users # Routes for authentication
 
  root "foods#index"  # Defines the root path route ("/")
  resources :recipe_foods
  resources :inventories   do  #, only: [:show, :new, :create, :index, :destroy]
    resources :inventory_foods
  end
  resources :recipes
  resources :foods
  resources :users
  
  
end
