class CharacterController < ApplicationController
  def index
    render({ :template => "char_templates/index.html.erb"})
  end
end