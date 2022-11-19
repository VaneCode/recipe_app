require 'rails_helper'

RSpec.describe 'inventory_foods/new', type: :view do
  before(:each) do
    assign(:inventory_food, InventoryFood.new(
                              quantity: 'MyString'
                            ))
  end
end
