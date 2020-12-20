class AuthorizationService
  include JsonWebTokenModule
  attr_accessor :headers

  def authenticate_request!
    verify_token
  end

  def generate_token
    JsonWebTokenModule::JsonWebToken.token_user
  end

  def revoke_token
    JsonWebTokenModule::JsonWebToken.revoke_token_user(@headers['Authorization'].split(' ').last)
  end

  private

  def http_token
    @headers['Authorization'].split(' ').last if @headers['Authorization'].present?
  end

  def verify_token
    JsonWebTokenModule::JsonWebToken.verify(http_token)
  end
end
