class PagesController < ApplicationController
	def show
    @languages = Language.all
    @cities = City.all
    @activities = Activity.last(4)
    # Render
    render template: "pages/#{params[:page]}"
	end

	def thanks
    render template: "pages/#{params[:page]}"
	end
end