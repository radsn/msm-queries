Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/eldest", { :controller => "directors", :action => "eldest" })
  get("directors/:director_id", { :controller => "directors", :action => "details" })
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:actor_id", { :controller => "actors", :action => "details" })
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:movie_id", { :controller => "movies", :action => "details" })
end
