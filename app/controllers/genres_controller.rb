class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to genres_path
  end

  def index
    @genres = Genre.all
  end

  def destroy
  end

  private
  def genre_params
    params.require(:genre).permit(:name)
  end
end
