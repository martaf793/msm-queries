class MoviesController < ApplicationController
  def index 
    render({:template=> "movies_templates/list"})
  end 
  def show
    @the_id=params.fetch("the_id")
    @matching_rec=Movie.where({:id=> the_id})
    @the_movie=@matching_rec.at(0)
    render({:template => "movies_templates/details"})
  end 
end
