require 'rails_helper'

describe User do
  describe '#webauth_user?' do
    it 'should return false when the user has no WebAuth attribute' do
      expect(User.new(nil)).to_not be_webauth_user
    end
    it 'should return true when the user has a WebAuth attribute' do
      expect(User.new(webauth: 'WebAuth User')).to be_webauth_user
    end
  end
  describe '#non_webauth_user?' do
    it 'should be a non_webauth_user if webauth is not present' do
      expect(User.new(nil)).to be_non_webauth_user
    end
  end
end
