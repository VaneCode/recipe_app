require 'rails_helper'

RSpec.describe 'recipe_foods/index', type: :view do
  before(:each) do
    assign(:recipe_foods, [
             RecipeFood.create!(
               quantity: 'Quantity'
             ),
             RecipeFood.create!(
               quantity: 'Quantity'
             )
           ])
  end
end
