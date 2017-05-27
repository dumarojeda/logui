class PagesController < ApplicationController
	def show
    # Get all languages
    @languages = Language.all
    # Render
    render template: "pages/#{params[:page]}"
	end

	def about
	end
end