class PatientsController < SecuredController
  skip_before_action :authorize_request, only: [:create]

  def initialize
    super
    @patient_service = PatientsService.new
  end

  def create
    patient = @patient_service.create(patient_params)
    render json: patient
  end

  def get
    patient = @patient_service.get(params[:id])
    render json: patient
  rescue RecordNotFound
    head :no_content
  end

  def update
    patient = @patient_service.update(params[:id], patient_params)
    render json: patient
  end

  def delete
    @patient_service.delete(params[:id])
  end

  private

  def patient_params
    params.require(:doctor).permit(:name, :email, :phone, :password, :password_confirmation, :document,
                                   :health_plan_id)
  end
end
