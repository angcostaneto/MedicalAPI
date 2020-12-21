class MedicalAppointmentsController < SecuredController
  def initialize
    super
    @medical_appointment_service = MedicalAppointmentService.new
  end

  def create
    medical_appointment = @medical_appointment_service.create(medical_appointment_params)
    render json: medical_appointment
  end

  def get
    medical_appointment = @medical_appointment_service.get(params[:id])
    render json: medical_appointment
  rescue RecordNotFound
    head :no_content
  end

  private

  def medical_appointment_params
    params.require(:medical_appointment).permit(:patient_id, :doctor_id, :min_duration, :start, :end)
  end
end
