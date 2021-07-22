class ActorController < ApplicationController

  def index
    @all_actors = Actor.all

    render({ :template => "act_templates/index.html.erb"})
  end

  def details
    @spec_actor = Actor.where({ :id => params[:act_id]}).at(0)
    @characters = Character.where({ :actor_id => params[:act_id]})

    render({ :template => "act_templates/details.html.erb"})
  end
end