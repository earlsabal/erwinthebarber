class PicsController < ApplicationController
	def index
		@pics = Pic.all
	end

	def show
		@pic = Pic.find(params[:id])
	end

	def create
		@pic = Pic.new(pic_params)
		if @pic.save
			redirect_to @pic.haircut
		else
			@errors = @pic.errors.full_messages
			render "new"
		end
	end

	def update
		if @pic.update(pic_params)
			flash[:success] = "Pic updated."
			redirect_to @pic.haircut
		else
			@errors = @pic.errors.full_messages
			render "edit"
		end
	end

	def destroy
		@pic = Pic.find(params[:id])
		haircut = @pic.haircut
		@pic.destroy
		redirect_to haircut
	end

	private
  def pic_params
    params.require(:pic).permit(:haircut_id, :title, :url, :body)
  end
end