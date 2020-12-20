class DoctorsLoginController < AbstractAuthenticationController

  def initialize
    super
    @service = DoctorsService.new
  end

end
