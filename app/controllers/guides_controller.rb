class GuidesController < ApplicationController

  def index
    if params.has_key?(:city) && params.has_key?(:language)
      language = Language.find_by(name: params[:language]) 
      @guides = Language.find(language.id).guides
      city = City.find_by(name: params[:city])
      @guides = @guides.where(city_id: city.id)
    end
  end

end
