class Posts::UseCases::UpdatePost
  def initialize(repository)
    @repository = repository
    @edit_service = Posts::Services::EditService.new(repository)
  end

  def call(update_post_dto)
    raise "type error. #{update_post_dto.class}" unless update_post_dto.is_a?(Posts::Dto::UpdatePostDto)

    @edit_service.update(
      update_post_dto.id,
      update_post_dto.title,
      update_post_dto.content
    )
  end
end