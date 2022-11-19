Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users # Routes for authentication
 
  root to: "foods#index"  # Defines the root path route ("/")
  resources :users
  resources :foods
  resources :recipes do
    resources :recipe_foods
    get '/add_food/', to: 'recipe_foods#add_food'
    get 'recipe_foods/:id/edit', to: 'recipe_foods#edit', as: 'edit_recipe_food'
    patch 'recipe_foods/:id', to: 'recipe_foods#update', as: 'update_recipe_food'
  end
  resources :inventories   do  #, only: [:show, :new, :create, :index, :destroy]
    resources :inventory_foods
  end
  get '/public_recipes', to: 'recipes#public_recipes'

  resources :general_shopping_list, only: [:index]
end
