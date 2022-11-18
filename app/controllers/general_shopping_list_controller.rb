class GeneralShoppingListController < ApplicationController
    def index
      @recipe = Recipe.find(params[:recipe_id])
      @inventory = Inventory.find(params[:inventory_id])
      @shopping_list = []
    end
  end
