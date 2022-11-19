require 'rails_helper'

RSpec.describe 'recipes/index', type: :view do
  before(:each) do
    assign(:recipes, [
             Recipe.create!(
               name: 'Name',
               prep_time: 2,
               cooking_time: 3,
               description: 'MyText',
               public: false
             ),
             Recipe.create!(
               name: 'Name',
               prep_time: 2,
               cooking_time: 3,
               description: 'MyText',
               public: false
             )
           ])
  end
end
