require 'rails_helper'

RSpec.describe 'inventory_foods/show', type: :view do
  before(:each) do
    assign(:inventory_food, InventoryFood.create!(
                              quantity: 'Quantity'
                            ))
  end
end
