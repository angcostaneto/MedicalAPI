# Class abstract repository
#
# Base class for repository
#
class AbstractRepository < Repository

  attr_writer :get, :create, :update, :delete
  attr_accessor :model

  def get(*filters)
    return model.find_by(filters)
  end

  def create(*args)
    model.create(args)

    return model
  end

  def update(id, *args)
    model = get(id)
    model.update(args)

    return model
  end

  def delete(id)
    model = get(id: id)
    model.destroy
  end

end
