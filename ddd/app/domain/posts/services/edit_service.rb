class Posts::Services::EditService
  def initialize(repository)
    @repository = repository
  end

  def create(title, content)
    post = Posts::Entities::Post.new(
      id: nil,
      title: title,
      content: content,
      created_at: Time.now, 
      updated_at: Time.now
    )

    result = @repository.create(post)

    result.id.value
  end

  def update(id, title, content)
    post = @repository.find(id)
    post.set_title(title)
    post.set_content(content)

    @repository.update(post)

    nil
  end
end