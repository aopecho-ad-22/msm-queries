class DirectorsController < ActionController
  def index
    render({ :template => "director_templates/index.html.erb"})
  end

  def director_details
    director_id = params.fetch("director_id")
    @director = Director.where({ :id => director_id })
    render({ :template => "director_templates/index.html.erb"})
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
