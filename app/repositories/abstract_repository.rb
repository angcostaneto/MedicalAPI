# Class abstract repository
#
# Base class for repository
#
class AbstractRepository < Repository

  attr_writer :get, :create, :update, :delete
  attr_accessor :model

  def get(filters)
    @model.find_by(filters)
  end

  def create(args)
    model = @model.new(args)
    model.save

    model
  end

  def update(id, args)
    model = get(id)
    model.update(args)
  end

  def delete(id)
    model = get(id: id)
    model.destroy
  end

  def find(args)
    @model.find_by(args)
  end

end
