class ActorController < ApplicationController
  def index
    render({ :template => "act_templates/index.html.erb"})
  end
end