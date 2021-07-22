Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  
  get("/directors", { :controller => "director", :action => "index"})
  get("/directors/:dir_id", { :controller => "director", :action => "details"})
  
  get("/movies", { :controller => "movie", :action => "index"})
  get("/movies/:mov_id", { :controller => "movie", :action => "details"})
end
