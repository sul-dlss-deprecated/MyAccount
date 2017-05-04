require 'rails_helper'

describe ApplicationController do
  it '#current_user calls CurrentUser.for(request)' do
    expect(CurrentUser).to receive(:for)
    controller.send(:current_user)
  end
  it '#current_user is not a webauth user if there is no webauth user_id' do
    allow(ENV).to receive(:[]).with('REMOTE_USER').and_return('some-user')
    expect(controller).to receive(:current_user).and_return(CurrentUser.for(request))
    expect(controller.send(:webauth_user?)).to be_truthy
  end
end
