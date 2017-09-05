class ServicesController < ApplicationController

	def edit
		@service = Service.find(params[:id])
	end

	def update
		@service = Service.find(params[:id])
		if @service.update(service_params)
			flash[:success] = "Service updated."
			redirect_to root_path
		else
			@errors = @service.errors.full_messages
			render "edit"
		end
	end

	private
	def service_params
		params.require(:service).permit(:title, :body, :icon)
	end
	
end
