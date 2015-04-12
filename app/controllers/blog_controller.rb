class BlogController < ApplicationController
  def index
    @blog = Blog.new
    post1 = @blog.new_post
    post1.title = "Paint just applied"
    post1.body = "Paint just applied. It's a lovely orange-purple!"
    post1.publish
    post2 = @blog.new_post
    post2.title = "Still wet"
    post2.body = "Paint is still quite wet. No bubbling yet!"
    post2.publish
  end
end
