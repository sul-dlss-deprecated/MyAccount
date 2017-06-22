require 'rails_helper'

describe 'shared/_top_navbar.html.erb' do
  before do
    user = User.new
    allow(controller).to receive(:current_user).and_return(user)
    render
  end
  describe 'logout link' do
    it 'should have a logout link if there is a current user' do
      expect(rendered).to have_link('logout', href: '/users/sign_out')
    end
  end
end
