class ButtonsController < ApplicationController
	def edit
		@button = Button.find(params[:id])
	end

	def update
		@button = Button.find(params[:id])
		if @button.update(button_params)
			flash[:success] = "Button updated."
			redirect_to buttons_path
		else
			@errors = @button.errors.full_messages
			render "edit"
		end
	end

	private
	def button_params
		params.require(:button).permit(:name, :body)
	end
end
