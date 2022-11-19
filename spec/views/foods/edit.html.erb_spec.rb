require 'rails_helper'

RSpec.describe 'foods/edit', type: :view do
  let(:food) do
    Food.create!(
      name: 'MyString',
      measurement_unit: 'MyString',
      price: '9.99'
    )
  end

  before(:each) do
    assign(:food, food)
  end
end
