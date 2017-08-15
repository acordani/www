class LinkPartnersController < ApplicationController
	

	def index
	end
	
	def new
		


	end

	def create
		@link_partner = LinkPartner.new(linkpartner_params)
		@sale = Sale.friendly.find(params[:sale_id])
		
		@link_partner.sale = @sale
		
		if @link_partner.save
			redirect_to sale_path(@sale)
		else
			render "sales/show"
		end

	end

	private

	def linkpartner_params
		params.require(:link_partner).permit(:link, :active, :partner_id)
	end

	

end
