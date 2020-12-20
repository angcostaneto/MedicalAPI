class AbstractAuthenticationController < SecuredController
  skip_before_action :authorize_request, only: [:verify_model]

  include JsonWebTokenModule
  attr_accessor :service

  # Verify email and password.
  def verify_model
    model = service.find(email: params[:email])

    unless model.present? || model.blank?
      render json: { errors: ['Invalid email / password'] }, status: :unauthorized
    end

    # Verify password
    unless model.authenticate(params[:password])
      render json: { errors: ['Invalid email / password'] }, status: :unauthorized
    end

    render json: JsonWebTokenModule::JsonWebToken.token_user
  end
end
