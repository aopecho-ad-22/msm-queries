class ActorsController < ApplicationController
  def index
    render({ :template => "actor_templates/index.html.erb"})
  end

  def actor_details
    actor_id = params.fetch("actor_id")
    @actor = Actor.where({ :id => actor_id })
    render({ :template => "actor_templates/details.html.erb"})
  end
end
