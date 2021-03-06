class FavoritesController < ApplicationController

  def create
    post = Post.find(params[:post_id])
    favorite = Favorite.new
    favorite.user_id = current_user.id
    favorite.post_id = post.id
    favorite.save
    post.create_notification_like(current_user)
    redirect_back(fallback_location: root_path)
  end

  def destroy
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.find_by(post_id: post.id)
    favorite.destroy
    redirect_back(fallback_location: root_path)
  end


end
