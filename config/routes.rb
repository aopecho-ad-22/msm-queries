Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
# Directors
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:director_id", { :controller => "directors", :action => "director_details" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/eldest", { :controller => "directors", :action => "eldest" })
# Movies
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:movie_id", { :controller => "movies", :action => "movie_details" })
# Actors
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:actor_id", { :controller => "actors", :action => "actor_details" })
end

