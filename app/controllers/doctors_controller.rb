class DoctorsController < SecuredController
  skip_before_action :authorize_request, only: [:create]

  def initialize
    super
    @doctor_service = DoctorsService.new
  end

  def create
    doctor = @doctor_service.create(doctor_params)
    if doctor.persisted?
      render json: doctor
    else
      render json: doctor.errors, status: :bad_request
    end

  end

  def get
    doctor = @doctor_service.get(params[:id])
    if doctor
      render json: doctor
    else
      render json: doctor.errors, status: :not_found
    end
  end

  def update
    doctor = @doctor_service.update(params[:id], doctor_params)
    if doctor.persisted?
      render json: doctor
    else
      render json: doctor.errors, status: :bad_request
    end
  end

  def delete
    @doctor_service.delete(params[:id])
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :email, :phone, :password, :password_confirmation, :document,
                                   :medical_specializations_id)
  end
end
