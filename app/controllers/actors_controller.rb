class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    render({ :template => "pages_templates/actors" })
  end

  def details
    @actor = Actor.where({ :id => params.fetch("actor_id") }).first
    @list_of_characters = Character.where({ :actor_id => params.fetch("actor_id") })
    render({ :template => "pages_templates/actor_details"})
  end
  
end
