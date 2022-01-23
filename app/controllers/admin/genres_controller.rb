class Admin::GenresController < ApplicationController
  def index
    @genre_new = Genre.new
    @genres = Genre.all
  end

  def create
    @genre_new =  Genre.new(genre_params)
    if @genre_new.save
      redirect_to admin_genres_path
    else
      render :index
    end
  end

  def update
    @genre =  Genre.find(params[:id])
    if @genre.update(genre_params)
      redirect_to admin_genres_path
    else
      render :edit
    end
  end

  def edit
    @genre =  Genre.find(params[:id])
  end
  
  private
  def genre_params
    params.require(:genre).permit(:name)
  end
end