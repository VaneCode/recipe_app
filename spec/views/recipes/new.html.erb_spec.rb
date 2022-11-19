require 'rails_helper'

RSpec.describe 'recipes/new', type: :view do
  before(:each) do
    assign(:recipe, Recipe.new(
                      name: 'MyString',
                      prep_time: 1,
                      cooking_time: 1,
                      description: 'MyText',
                      public: false
                    ))
  end
end
