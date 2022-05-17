class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all
    render({ :template => "director_templates/index.html.erb"})
  end

  def director_details
    director_id = params.fetch("director_id")
    @director = Director.where({ :id => director_id }).at(0)
    @filmography = Movie.where({ :director_id => director_id }).at(0)
    render({ :template => "director_templates/details.html.erb"})
  end

  def youngest
    @youngest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).last
    render({ :template => "director_templates/youngest.html.erb"})
  end

  def eldest
    @eldest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).first
    render({ :template => "director_templates/eldest.html.erb"})
  end
end
