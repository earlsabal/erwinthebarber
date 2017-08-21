class AddressesController < ApplicationController
	def edit
		@address = Address.find(params[:id])
	end

	def update
		@address = Address.find(params[:id])
		if @address.update(address_params)
			flash[:success] = "Address updated."
			redirect_to addresss_path
		else
			@errors = @address.errors.full_messages
			render "edit"
		end
	end

	private
	def address_params
		params.require(:address).permit(:name, :number, :street, :city, :state)
	end
end
