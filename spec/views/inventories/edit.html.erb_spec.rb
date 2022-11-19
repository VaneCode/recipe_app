require 'rails_helper'

RSpec.describe 'inventories/edit', type: :view do
  let(:inventory) do
    Inventory.create!(
      name: 'MyString'
    )
  end

  before(:each) do
    assign(:inventory, inventory)
  end
end
