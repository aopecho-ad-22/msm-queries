class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
    render({ :template => "actor_templates/index.html.erb"})
  end

  def actor_details
    actor_id = params.fetch("actor_id")

    @actor = Actor.where({ :id => actor_id }).at(0)

    @roles = Character.where({ :actor_id => actor_id })

    @list_of_movies = Movie.all
    @list_of_directors = Director.all
    render({ :template => "actor_templates/details.html.erb"})
  end
end
