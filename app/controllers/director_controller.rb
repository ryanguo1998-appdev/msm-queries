class DirectorController < ApplicationController

  def index
    @list_of_directors = Director.all

    render({ :template => "dir_templates/index.html.erb"})
  end

  def details
    @spec_director = Director.where({:id => params[:dir_id]}).at(0)

    @films = Movie.where({:director_id => params[:dir_id]})

    render({ :template => "dir_templates/details.html.erb"})
  end
end