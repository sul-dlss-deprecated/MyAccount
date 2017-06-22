require 'rails_helper'

describe SessionsController, type: :controller do
  describe 'Sign in params' do
    before do
      @request.env['devise.mapping'] = Devise.mappings[:user]
    end
    it 'takes you to the sign in form if no user is signed in' do
      expect(User.count).to eq 0
      expect(controller).to receive(:redirect_to).with('/users/sign_in').and_return(true)
      controller.send(:configure_sign_in_params)
    end
    it 'redirects to the home page if a user is signed in' do
      user = FactoryGirl.create(:user)
      sign_in user
      expect(User.count).to eq 1
      expect(controller).to receive(:redirect_to).with('/').and_return(true)
      controller.send(:configure_sign_in_params)
    end
  end
end
