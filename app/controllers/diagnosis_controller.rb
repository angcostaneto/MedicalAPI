class DiagnosisController < SecuredController
  def initialize
    super
    @diagnosis_service = DiagnosisService.new
  end

  def create
    diagnosis = @diagnosis_service.create(diagnosis_params)
    render json: diagnosis
  end

  def get
    diagnosis = @diagnosis_service.get(params[:id])
    render json: diagnosis
  rescue RecordNotFound
    head :no_content
  end

  private

  def diagnosis_params
    params.require(:diagnosis).permit(:diagnosis, :doctor_id, :patient_id, :medical_appointment_id)
  end
end
