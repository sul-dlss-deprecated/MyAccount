require 'rails_helper'

describe 'Registration', type: :feature do
  let(:user) { FactoryGirl.create(:user) }

  it 'something' do
    login_as(user, scope: :user)
    visit home_index_path
    expect(body).to have_css('h1', 'My borrowing account')
  end
end
