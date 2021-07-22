Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  
  get("/directors", { :controller => "director", :action => "index"})
  get("/directors/youngest", { :controller => "director", :action => "young"})
  get("/directors/eldest", { :controller => "director", :action => "old"})
  get("/directors/:dir_id", { :controller => "director", :action => "details"})

  get("/movies", { :controller => "movie", :action => "index"})
  get("/movies/:mov_id", { :controller => "movie", :action => "details"})

  get("/actors", { :controller => "actor", :action => "index"})
  get("/actors/:act_id", { :controller => "actor", :action => "details"})

end
