class AbstractAuthenticationController < SecuredController
  skip_before_action :authorize_request, only: [:login]
  attr_accessor :service

  # Verify email and password.
  def login
    model = @service.find(email: params[:email])

    unless model.present? || model.blank?
      render json: { errors: ['Invalid email / password'] }, status: :unauthorized
    end

    # Verify password
    unless model.authenticate(params[:password])
      render json: { errors: ['Invalid email / password'] }, status: :unauthorized
    end

    render json: @authorization_service.generate_token
  end

  def logout
    render json: @authorization_service.revoke_token
  end
end
