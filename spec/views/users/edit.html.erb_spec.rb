require 'rails_helper'

RSpec.describe 'users/edit', type: :view do
  let(:user) do
    User.create!(
      name: 'MyString'
    )
  end

  before(:each) do
    assign(:user, user)
  end
end
