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

  it 'renders a list of inventories' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
  end
end
