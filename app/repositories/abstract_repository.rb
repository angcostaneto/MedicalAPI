# Class abstract repository
#
# Base class for repository
#
class AbstractRepository < Repository

  attr_writer :get, :create, :update, :delete
  attr_reader :model

  # @method model
  #   Set model for repository
  #
  # @param model
  #   Instance from a model
  #
  # @return null
  def model=(model)
    @model = model.new
  end

  def get(*filters)
    return model.find_by(filters)
  end

  def create(*args)
    model.create(*args)

    return model
  end

  def update(id, *params)
    model = get(id)
    model.update(params)

    return model
  end

  def delete(id)
    model = get(id: id)
    model.destroy
  end

end
