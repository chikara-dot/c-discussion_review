class PostCommentsController < ApplicationController

  def create
    post = Post.find(params[:post_id])
    comment = PostComment.new(post_comments_params)
    comment.user_id = current_user.id
    comment.post_id = post.id
    comment.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
  end

  private
  def post_comments_params
    params.require(:post_comment).permit(:comment)
  end
end
