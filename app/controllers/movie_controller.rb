class MovieController < ApplicationController
  def index
    @all_movies = Movie.all

    render({ :template => "mov_templates/index.html.erb"})
  end

  def details
    @spec_movie = Movie.where({ :id => params[:mov_id]}).at(0)

    render({ :template => "mov_templates/details.html.erb"})
  end
end