class DoctorsController < ApplicationController
  def initialize
    super
    @doctor_service = DoctorsService.new
  end

  def create
    render @doctor_service.create(doctor_params)
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :email, :phone, :password, :password_confirmation, :document)
  end
end
