class MoviesController < ApplicationController
  
  def index
    @list_of_movies = Movie.all
    render({ :template => "pages_templates/movies" })
  end

  def details
    @movie = Movie.where({ :id => params.fetch("movie_id") }).first
    render({ :template => "pages_templates/movie_details"})
  end
end
