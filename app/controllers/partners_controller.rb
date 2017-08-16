class PartnersController < ApplicationController
	before_action :authenticate_user!, only: [:index, :show, :new], raise: false
	before_action :set_partner, only: [:show, :destroy, :edit, :update]
	def index
		@partners = Partner.all
		
	end
	def show
		
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

	def destroy
		@partner.destroy
		redirect_to partners_path
	end



	private

	def partner_params
		params.require(:partner).permit(:photo, :name)
	end

	def set_partner
		@partner = Partner.find(params[:id])
	end
end
