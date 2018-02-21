class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :destroy, :edit, :update]

  def index
    @director = Director.find(params[:director_id])
    @cart = Cart.new(session[:cart])
  end

  def new
    @director = Director.find(params[:director_id])
    @movie = Movie.new
  end

  def create
    @director = Director.find(params[:director_id])
    @movie = @director.movies.new(movie_params)
      if @movie.save
          redirect_to director_movies_path(@director)
      else
        render :new
      end
  end

  def show

  end

  def edit

  end

  def update
    @movie.update(movie_params)
    if @movie.save
      flash[:success] = "#{@movie.title} updated!"
      redirect_to movie_path(@movie)
    else
      render :edit
    end
  end

  def destroy
    movie = set_movie
    @movie.destroy
    flash[:success] = "#{movie.title} was successfully deleted!"
    redirect_to movies_path
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description)
  end

  def set_movie
    @movie = Movie.find(params[:id])
  end
end
