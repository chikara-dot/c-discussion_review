class CategoriesController < ApplicationController

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.genre_id = params[:genre_id]
    @category.user_id = current_user.id
    @category.save
    redirect_to genre_categories_path
  end

  def index
   @categories = Category.all
  end

  def destroy
  end

  private
  def category_params
    params.require(:category).permit(:name,:image)
  end
end
