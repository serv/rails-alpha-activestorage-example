class PostsController < ApplicationController
  # we will display post form here
  def index
    @post = Post.new
  end
  # we will create post here
  def create
    post = Post.create! params.require(:post).permit(:title, :body)
    post.images.attach(params[:post][:images])
    redirect_to post
  end
  # we will display post with photo
  def show
    @post = Post.find(params[:id])
  end
end
