require 'rails_helper'

RSpec.describe 'users/index', type: :view do
  before(:each) do
    assign(:users, [
             User.create!(
               name: 'Name'
             ),
             User.create!(
               name: 'Name'
             )
           ])
  end
end
