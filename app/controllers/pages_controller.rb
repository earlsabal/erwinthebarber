class PagesController < ApplicationController

	def home
		@page = "home"
		@services = Service.all
	end

	def booking
		@page = "booking"
	end
	
end