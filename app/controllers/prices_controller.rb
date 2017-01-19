class PricesController < ApplicationController

	skip_before_action :authenticate_user!, only: [ :show ]
	def index
		@prices = Price.all
	end

	def new
		@price = Price.new
	end

	def create
		@price = Price.new(price_params)
		if @price.save
			redirect_to price_path(@price)
		else
			render :new
		end
	end

	def show
		@price = Price.find(params[:id])
	end



	private

	def price_params
		params.require(:price).permit(:price_average_house, :price_max_house, :price_min_apartment, :price_average_apartment, :price_max_apartment, :street, :city, :neighborhood, :type_of_street)
	end


end

