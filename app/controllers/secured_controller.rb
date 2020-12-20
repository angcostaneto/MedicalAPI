class SecuredController < ApplicationController
  before_action :authorize_request
  attr_accessor :authorization_service

  def initialize
    super
    @authorization_service = AuthorizationService.new
  end

  private

  def authorize_request
    @authorization_service.headers = request.headers
    @authorization_service.authenticate_request!
  rescue JWT::VerificationError, JWT::DecodeError
    render json: { errors: ['Not Authenticated'] }, status: :unauthorized
  end

end
