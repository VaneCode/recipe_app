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

  it 'renders the edit inventory_food form' do
    render

    assert_select 'form[action=?][method=?]', inventory_food_path(inventory_food), 'post' do
      assert_select 'input[name=?]', 'inventory_food[quantity]'
    end
  end
end
