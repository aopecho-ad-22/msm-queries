class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
    render({ :template => "actor_templates/index.html.erb"})
  end

  def actor_details
    actor_id = params.fetch("actor_id")
    #which actor?
    @actor = Actor.where({ :id => actor_id }).at(0)
    #roles by id
    @roles = Character.where({ :actor_id => actor_id })
    #movies gleaned from character roles
    @list_of_movies = Movie.all
    render({ :template => "actor_templates/details.html.erb"})
  end
end
