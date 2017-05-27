class PagesController < ApplicationController
	def show
    # Get all languages
    @languages = Language.all
    # Get all cities
    @cities = City.all
    # Render
    render template: "pages/#{params[:page]}"
	end

	def about
	end
end