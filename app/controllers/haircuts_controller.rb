class HaircutsController < ApplicationController

	before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

	def index
		@haircuts = Haircut.all
	end

	def new
		@haircut = Haircut.new
	end

	def create
		@haircut = Haircut.new(haircut_params)
		if @haircut.save
			redirect_to haircuts_path
		else
			@errors = @haircut.errors.full_messages
			render "new"
		end
	end

	def edit
		@haircut = Haircut.find(params[:id])
	end

	def update
		@haircut = Haircut.find(params[:id])
		if @haircut.update(haircut_params)
			flash[:success] = "Haircut updated."
			redirect_to haircuts_path
		else
			@errors = @haircut.errors.full_messages
			render "edit"
		end
	end

	def destroy
		@haircut = Haircut.find(params[:id])
		@haircut.destroy
		redirect_to haircuts_path
	end

	private
  def haircut_params
    params.require(:haircut).permit(:name, :description)
  end

end
