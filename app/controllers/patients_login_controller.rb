class PatientsLoginController < AbstractAuthenticationController

  def initialize
    super
    @service = PatientsService.new
  end

end
