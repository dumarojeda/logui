class ActivitiesController < ApplicationController
  def index
    city = City.find(params[:city])
    @activities = city.activities
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = 
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def activities_params
    params
  end

end
