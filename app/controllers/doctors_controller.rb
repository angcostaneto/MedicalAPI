class DoctorsController < ApplicationController
  def initialize
    super
    @doctor_service = DoctorsService.new
  end

  def create
    doctor = @doctor_service.create(doctor_params)
    render json: doctor
  end

  def get
    doctor = @doctor_service.get(params[:id])
    render json: doctor
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :email, :phone, :password, :password_confirmation, :document,
                                   :medical_specializations_id)
  end
end
