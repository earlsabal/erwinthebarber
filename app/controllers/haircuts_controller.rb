class HaircutsController < ApplicationController
	def index
		@haircuts = Haircut.all
	end

	def show
		@haircut = Haircut.find(params[:id])
	end

	def create
		@haircut = Haircut.new(haircut_params)
		if @haircut.save
			redirect_to @haircut
		else
			@errors = @haircut.errors.full_messages
			render "new"
		end
	end

	def update
		if @haircut.update(haircut_params)
			flash[:success] = "Haircut updated."
			redirect_to @haircut
		else
			@errors = @haircut.errors.full_messages
			render "edit"
		end
	end

	def destroy
		@haircut = Haircut.find(params[:id])
		@haircut.destroy
		redirect_to haircuts
	end

	private
  def haircut_params
    params.require(:haircut).permit(:name, :description)
  end
end