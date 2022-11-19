require 'rails_helper'

RSpec.describe 'recipe_foods/edit', type: :view do
  let(:recipe_food) do
    RecipeFood.create!(
      quantity: 'MyString'
    )
  end

  before(:each) do
    assign(:recipe_food, recipe_food)
  end
end
