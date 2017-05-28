class GuidesController < ApplicationController

  def index
    if params.has_key?(:city) && params.has_key?(:language)
      @guides = Language.find(params[:language][:id]).guides
      city = City.find_by(name: params[:city])
      @guides = @guides.where(city_id: city.id)
    end
  end

end
