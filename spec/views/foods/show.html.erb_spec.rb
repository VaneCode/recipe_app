require 'rails_helper'

RSpec.describe 'foods/show', type: :view do
  before(:each) do
    assign(:food, Food.create!(
                    name: 'Name',
                    measurement_unit: 'Measurement Unit',
                    price: '9.99'
                  ))
  end
end
