class MoviesController < ApplicationController
  def index
    render({ :template => "movie_templates/index.html.erb"})
  end

  def movie_details
    movie_id = params.fetch("movie_id")
    @movie = Movie.where({ :id => movie_id })
    render({ :template => "movie_templates/details.html.erb"})
  end
end
