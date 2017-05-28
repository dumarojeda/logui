class GuidesController < ApplicationController

  def index
    if params.has_key?(:city) && params.has_key?(:language)
      @guides = Language.find(params[:language].to_i).guides
      @guides = @guides.where(id: params[:city].to_i)
      
    end
  end

  def new
    @guide = Guide.new
  end

  def show
    @guide = Guide.find(params[:id])
  end





end
