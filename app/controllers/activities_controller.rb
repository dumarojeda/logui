class ActivitiesController < ApplicationController
  def index
    city = City.find(params[:city])
    @activities = city.activities
    @activities = @activities.where(language_id: params[:language].to_i)

  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.create(activities_params)
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])
    @activity.update(activities_params)
    redirect_to activities_path
  end

  def destroy
    @activity = Activity.find(params[:id])
    @Activity.destroy
  end

  def activities_params
    params.require(:activity).permit(:name, :description, :img_url, :price, :hour, :include, :observations, :city_id, :guide_id)
  end

end
