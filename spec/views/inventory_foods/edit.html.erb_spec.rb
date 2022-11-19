require 'rails_helper'

RSpec.describe 'inventory_foods/edit', type: :view do
  let(:inventory_food) do
    InventoryFood.create!(
      quantity: 'MyString'
    )
  end

  before(:each) do
    assign(:inventory_food, inventory_food)
  end
end
