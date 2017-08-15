class PartnersController < ApplicationController
	
	def show
		@partner = Partner.find(params[:id])
	end

	def new
		@partner = Partner.new
	end

	def create
		@partner = Partner.new(partner_params)

		if @partner.save
			redirect_to partner_path(@partner)
		else
			render :new
		end
	end



	private

	def partner_params
		params.require(:partner).permit(:photo, :name)
	end
end
