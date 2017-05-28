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
    @guide_id = params[:guide_id]
  end

  def create
    @activity = Activity.new(activities_params)
    if @activity.save
      redirect_to guide_activity_path(@activity.guide_id, @activity.id)
    else
      redirect_to new_guide_activity_path(@activity.guide_id)
    end
      
  end

  def edit
    puts "edit"*30
    puts "#{params[:guide_id]}"
    @guide_id = params[:guide_id]
    @activity = Activity.find(params[:id])
  end

  def update
    puts "hola"*30
    puts "#{params[:activity][:guide_id]}"
    @activity = Activity.find(params[:id])
    @activity.update!(activities_params)
    redirect_to guide_activity_path(@activity.guide_id, @activity.id)
  end

  def destroy
    @activity = Activity.find(params[:id])
    @Activity.destroy
  end

  def activities_params
    params.require(:activity).permit(:name, :description, :img_url, :price, :hour, :include, :observations, :city_id, :language_id).merge(guide_id: params[:activity][:guide_id].to_i)
  end

end
