class InformationsController < ApplicationController

	def edit
		@information = Information.find(params[:id])
	end

	def update
		@information = Information.find(params[:id])
		if @information.update(information_params)
			flash[:success] = "Information updated."
			redirect_to root_path
		else
			@errors = @information.errors.full_messages
			render "edit"
		end
	end

	private
	def information_params
		params.require(:information).permit(:name, :body)
	end

end
