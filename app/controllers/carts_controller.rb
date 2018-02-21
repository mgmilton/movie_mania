class CartsController < ApplicationController
  include ActionView::Helpers::TextHelper

  def create
    movie = Movie.find(params[:movie_id])
    @cart.add_movie(movie.id)
    session[:cart] = @cart.contents
    flash[:notice] = "You now have #{pluralize(@cart.count_of(movie.id), movie.title)} in your cart."
    redirect_to director_movies_path(params[:director_id])
  end
end
