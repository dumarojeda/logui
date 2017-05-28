class PagesController < ApplicationController
	def show
    # Get all languages
    @languages = Language.all
    # Get all cities
    @cities = City.all
    @activities = Activity.last(4)
    # Render
    render template: "pages/#{params[:page]}"
	end

	def about
	end
end