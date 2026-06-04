class Posts::UseCases::CreatePost
  def initialize(repository)
    @repository = repository
    @edit_service = Posts::Services::EditService.new(repository)
  end

  def call(create_post_dto)
    raise "type error. #{create_post_dto.class}" unless create_post_dto.is_a?(Posts::Dto::CreatePostDto)

    @edit_service.create(create_post_dto.title, create_post_dto.content)
  end
end