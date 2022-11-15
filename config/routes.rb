Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users # Routes for authentication
 
  root "foods#index"  # Defines the root path route ("/")
  # resources :recipe_foods
  resources :inventory_foods
  resources :inventories
  resources :recipes do
    resources :recipe_foods
    get '/add_food/', to: 'recipe_foods#add_food'
    # get '/shopping_list', to: 'recipes#shopping_list'
  end
  resources :foods
  resources :users
  get '/public_recipes', to: 'recipes#public_recipes'
  
end
