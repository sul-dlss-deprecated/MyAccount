require 'rails_helper'

describe CurrentUser do
  subject { described_class.for(double(env: {})) }
  describe '#current_user' do
    it 'should return nil user if there is no user in the environment' do
      expect(subject).to be_nil
    end
    it 'should return a user when there is a user in the environment' do
      allow(ENV).to receive(:[]).with('REMOTE_USER').and_return('some-user')
      allow_any_instance_of(described_class).to receive_messages(user_id: 'some-user')
      expect(subject).to be_a User
      expect(subject.webauth).to eq 'some-user'
    end
  end
end
