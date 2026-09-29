class Posts::Services::ListService
  def initialize(repository)
    @repository = repository
  end

  def all
    @repository.all
  end
end