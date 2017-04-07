class PostsController < ApplicationController

  def index
    @posts = current_user.posts
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to "/posts"
    else
      flash[:notice] = "not working"
      redirect_to "/posts/new"
    end
  end

  def update
    set_post.update(post_params)
    redirect_to '/posts', notice: "Post was updated!!"
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    set_post.destroy
    redirect_to '/posts', notice: "Post was deleted!"
  end

  private
  def post_params
    params.require(:post).permit(:title, :description)
  end

  def set_post
    Post.find_by(params[:post_id])
  end

end
