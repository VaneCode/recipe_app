require 'rails_helper'

RSpec.describe 'inventories/index', type: :view do
  before(:each) do
    assign(:inventories, [
             Inventory.create!(
               name: 'Name'
             ),
             Inventory.create!(
               name: 'Name'
             )
           ])
  end
end
