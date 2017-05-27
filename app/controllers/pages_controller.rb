class PagesController < ApplicationController
	def show
		render template: "pages/#{params[:page]}"
	end

	def about
	end
end