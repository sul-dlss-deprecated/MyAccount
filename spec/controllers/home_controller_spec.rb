require 'rails_helper'

describe HomeController, type: :controller do
  describe 'GET #index' do
    before do
      user = FactoryGirl.create(:user)
      allow(request.env['warden']).to receive(:authenticate!).and_return(user)
      allow(controller).to receive(:current_user).and_return(user)
    end

    it 'renders index' do
      get :index
      expect(response).to render_template('index')
    end
  end
end
