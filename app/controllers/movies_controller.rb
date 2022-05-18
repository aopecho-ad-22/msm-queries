class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
    @list_of_directors = Director.all
    render({ :template => "movie_templates/index.html.erb"})
  end

  def movie_details
    movie_id = params.fetch("movie_id")
    @movie = Movie.where({ :id => movie_id }).at(0)
    @movie_director = Director.where({ :id => @movie.director_id }).at(0).name
    render({ :template => "movie_templates/details.html.erb"})
  end
end
