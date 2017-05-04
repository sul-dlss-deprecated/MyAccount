# get the current User object from the Rails request object
# Intended to be used as CurrentUser.for(request)
class CurrentUser
  attr_reader :request

  def initialize(request)
    @request = request
  end

  def self.for(request)
    new(request).user_object
  end

  def user_object
    @user_object ||= webauth_user if user_id.present?
  end

  private

  def webauth_user
    User.new(user_id)
  end

  def user_id
    request.env['REMOTE_USER'] || ENV['REMOTE_USER']
  end
end
