class DescriptionsController < ApplicationController

	def edit
		@description = Description.find(params[:id])
	end

	def update
		@description = Description.find(params[:id])
		if @description.update(description_params)
			flash[:success] = "Description updated."
			redirect_to root_path
		else
			@errors = @description.errors.full_messages
			render "edit"
		end
	end

	private
	def description_params
		params.require(:description).permit(:name, :title, :body)
	end

end
