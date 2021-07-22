Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "director", :action => "index"})
  get("/directors/:dir_id", { :controller => "director", :action => "details"})
end
