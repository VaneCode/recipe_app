class GeneralShoppingListController < ApplicationController
  def index
    @recipe = Recipe.find(params[:recipe_id])
    @inventory = Inventory.find(params[:inventory_id])
    @shopping_list = missing_foods(@recipe, @inventory)
  end

  def missing_foods(recipe, inventory)
    shopping_list = []
    recipe_foods = recipe.recipe_foods
    if recipe_foods.length.positive?
      recipe_foods.each do |recipe_food|
        food = recipe_food.food
        inventory_food = inventory.inventory_foods.where(food_id: food.id)[0]
        unless inventory_food
          shopping_list << [food.name, "#{recipe_food.quantity} #{food.measurement_unit}",
                            recipe_food.quantity * food.price]
          next
        end
        quantity_needed = recipe_food.quantity - inventory_food.quantity
        quantity_needed = 0 if quantity_needed.negative?
        if inventory_food && quantity_needed != 0
          shopping_list << [food.name, "#{quantity_needed} #{food.measurement_unit}", quantity_needed * food.price]
        end
      end
    end
    shopping_list
  end
end
