require 'rails_helper'

RSpec.describe 'inventory_foods/show', type: :view do
  before(:each) do
    assign(:inventory_food, InventoryFood.create!(
                              quantity: 'Quantity'
                            ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Quantity/)
  end
end
