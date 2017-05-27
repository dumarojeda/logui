class GuidesController < ApplicationController

  def index
    if params.has_key?(:city) && params.has_key?(:language)
      @guides = Language.find(params[:language][:id]).guides
      #@guides = @guides.where(city_id: params[:city])
    end
  end

end
