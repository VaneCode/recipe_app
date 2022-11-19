require 'rails_helper'

RSpec.describe 'inventory_foods/index', type: :view do
  before(:each) do
    assign(:inventory_foods, [
             InventoryFood.create!(
               quantity: 'Quantity'
             ),
             InventoryFood.create!(
               quantity: 'Quantity'
             )
           ])
  end
end
