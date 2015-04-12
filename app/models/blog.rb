

# Blog class as self rendering entity
class Blog
  attr_reader :entries

  def initialize
    @entries = []
  end

  def title
    'Watching paint dry'
  end

  def subtitle
    'The trusted source for drying paint news & opinion'
  end

  def new_post
    post_source.call.tap do |p|
      p.blog = self
    end
  end

  private

  def post_source
    @post_source ||= Post.public_method(:new)
  end
end
