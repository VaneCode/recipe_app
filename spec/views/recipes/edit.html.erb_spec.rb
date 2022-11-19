require 'rails_helper'

RSpec.describe 'recipes/edit', type: :view do
  let(:recipe) do
    Recipe.create!(
      name: 'MyString',
      prep_time: 1,
      cooking_time: 1,
      description: 'MyText',
      public: false
    )
  end

  before(:each) do
    assign(:recipe, recipe)
  end
end
