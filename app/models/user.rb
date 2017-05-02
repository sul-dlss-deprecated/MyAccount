###
#  User class for authenticating via WebAuth
###
class User
  attr_accessor :webauth

  def initialize(webauth)
    @webauth = webauth
  end

  def webauth_user?
    webauth.present?
  end

  def non_webauth_user?
    !webauth_user?
  end
end
