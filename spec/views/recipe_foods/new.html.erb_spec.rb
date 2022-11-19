require 'rails_helper'

RSpec.describe 'recipe_foods/new', type: :view do
  before(:each) do
    assign(:recipe_food, RecipeFood.new(
                           quantity: 'MyString'
                         ))
  end
end
