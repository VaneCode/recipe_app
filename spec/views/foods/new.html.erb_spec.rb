require 'rails_helper'

RSpec.describe 'foods/new', type: :view do
  before(:each) do
    assign(:food, Food.new(
                    name: 'MyString',
                    measurement_unit: 'MyString',
                    price: '9.99'
                  ))
  end
end
