class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)
    @post.save
  end

  def new
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end