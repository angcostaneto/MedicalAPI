# @abstract
#
# Interface for repository
class Repository

  # @method get
  #   Get a row from database
  #
  # @param filters
  #     Filter by a specific field
  def get(*filters)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  # @method create
  #    Create a entity in row

  # @param args
  #    Args for create row
  def create(*args)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  # @method update
  #    Update a row
  #
  # @param id
  #    Id from row to be upadted
  # @param params
  #    Params that will be updated
  def update(id, *params)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  # @method delete
  #     Delete a row from database
  #
  # @param id
  #     Id from row to be deleted
  def delete(id)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
