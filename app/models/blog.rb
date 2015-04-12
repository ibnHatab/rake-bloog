
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

  def new_post(*args)
    post_source.call(*args).tap do |p|
      p.blog = self
    end
  end

  def add_entry(entry)
    entries << entry
  end

  private

  def post_source
    @post_source ||= Post.public_method(:new)
  end
end
