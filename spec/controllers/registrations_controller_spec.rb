require 'rails_helper'

describe RegistrationsController, type: :controller do
  describe 'one_user_registered?' do
    before do
      @request.env['devise.mapping'] = Devise.mappings[:user]
    end
    it 'register a new user' do
      FactoryGirl.create(:user)
      expect(User.count).to eq 1
      expect(controller).to receive(:redirect_to).with('/users/sign_in').and_return(true)
      controller.send(:one_user_registered?)
    end
    it 'takes user to the home page when they register and sign in' do
      user = FactoryGirl.create(:user)
      expect(User.count).to eq 1
      sign_in user
      expect(controller).to receive(:redirect_to).with('/').and_return(true)
      controller.send(:one_user_registered?)
    end
  end
end
