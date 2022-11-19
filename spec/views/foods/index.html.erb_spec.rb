require 'rails_helper'

RSpec.describe 'foods/index', type: :view do
  before(:each) do
    assign(:foods, [
             Food.create!(
               name: 'Name',
               measurement_unit: 'Measurement Unit',
               price: '9.99'
             ),
             Food.create!(
               name: 'Name',
               measurement_unit: 'Measurement Unit',
               price: '9.99'
             )
           ])
  end
end
