class DirectorsController < ApplicationController
  
  def index
    @list_of_directors = Director.all
    render({ :template => "pages_templates/directors" })
  end

  def youngest
    @director = Director.where.not({ :dob => nil }).order({ :dob => :desc }).first
    render({ :template => "pages_templates/youngest_director" })
  end

  def eldest
    @director = Director.where.not({ :dob => nil }).order({ :dob => :asc }).first
    render({ :template => "pages_templates/eldest_director" })
  end

  def details
    @director = Director.where({ :id => params.fetch("director_id") }).first
    @movies = Movie.where({ :director_id => @director.id })
    render({ :template => "pages_templates/director_details"})
  end

end
