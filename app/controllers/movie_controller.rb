class MovieController < ApplicationController
  def index
    render({ :template => "mov_templates/index.html.erb"})
  end
end