require 'rails_helper'

RSpec.describe 'recipe_foods/show', type: :view do
  before(:each) do
    assign(:recipe_food, RecipeFood.create!(
                           quantity: 'Quantity'
                         ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Quantity/)
  end
end
