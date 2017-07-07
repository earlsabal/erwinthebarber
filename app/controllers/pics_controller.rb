class PicsController < ApplicationController
	def index
		@pics = Pic.all
	end

	def show
		@pic = Pic.find(params[:id])
	end

	def new
		@haircut = Haircut.find(params[:haircut_id])
		@pic = Pic.new
	end

	def create
		@pic = Pic.new(pic_params)
		@haircut = @pic.haircut
		if @pic.save
			redirect_to haircuts
		else
			@errors = @pic.errors.full_messages
			render "new"
		end
	end

	def edit
		@pic = Pic.find(params[:id])
		@haircut = @pic.haircut
	end

	def update
		@pic = Pic.find(params[:id])
		@haircut = @pic.haircut
		if @pic.update(pic_params)
			flash[:success] = "Pic updated."
			redirect_to haircuts
		else
			@errors = @pic.errors.full_messages
			puts @pic.haircut
			render "edit"
		end
	end

	def destroy
		@pic = Pic.find(params[:id])
		@pic.destroy
		redirect_to haircuts
	end

	private
  def pic_params
    params.require(:pic).permit(:haircut_id, :title, :url, :body)
  end
end