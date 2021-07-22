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

  def young
    @youngest = Director.order({ :dob => :desc}).where.not({ :dob => nil}).at(0)

    render({ :template => "dir_templates/youngest.html.erb"})
  end

  def old
    @oldest = Director.order({ :dob => :asc}).where.not({ :dob => nil}).at(0)

    render({ :template => "dir_templates/oldest.html.erb"})
  end

end