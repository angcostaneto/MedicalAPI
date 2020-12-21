class MedicalAppointmentValuesController < SecuredController
  def initialize
    super
    @medical_appointment_value_service = MedicalAppointmentValueService.new
  end

  def create
    medical_appointment_value = @medical_appointment_value_service.create(medical_appoointment_value_params)
    render json: medical_appointment_value
  end

  def get
    medical_appointment_value = @medical_appointment_value_service.get(params[:id])
    render json: medical_appointment_value
  rescue RecordNotFound
    head :no_content
  end

  private

  def medical_appoointment_value_params
    params.require(:medical_appointment_value).permit(:value, :doctor_id)
  end
end
