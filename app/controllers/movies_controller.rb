class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def edit
  end

  def show
  end

  def create
    @movie = Movie.create(movie_params)
      if @movie.save
       redirect_to movies_path
      else
        render :new
      end
  end

  def update
  end

  def destroy
  end

  #private

  def set_movies
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :overview, :rating)
  end

end
