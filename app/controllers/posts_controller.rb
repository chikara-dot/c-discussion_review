class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.category_id = params[:category_id]
    @post.save
    redirect_to genre_category_posts_path
  end

  def index
    @category = Category.find(params[:category_id])
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = PostComment.new
    @category = Category.find(params[:category_id])
  end

  def destroy

  end

  private
  def post_params
    params.require(:post).permit(:title,:image)
  end
end
