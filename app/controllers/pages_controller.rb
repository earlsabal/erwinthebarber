class PagesController < ApplicationController
	def home
		@page = "home"
		@services = Service.all
	end
end