class PatientsController < SecuredController
  skip_before_action :authorize_request, only: [:create]
end
