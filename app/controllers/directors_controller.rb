class DirectorsController < ApplicationController
  def index 
    render({:template=> "director_templates/list"})
  end 
  def show
    @the_id=params.fetch("the_id")
    @matching_rec=Director.where({:id=> @the_id})
    @the_director=@matching_rec.at(0)
    render({:template => "director_templates/details"})
  end 

  def junior
    @junior_rec=Director.where.not({:dob=>nil}).order({:dob=> :desc})
    @junior=@junior_rec.at(0)
    render({:template=> "director_templates/junior"})
  end

  def senior 
    @senior_rec=Director.where.not({:dob=>nil}).order({:dob=> :asc})
    @senior=@senior_rec.at(0)
    render({:template=> "director_templates/senior"})
  end

end
