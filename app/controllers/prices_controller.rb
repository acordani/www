class PricesController < ApplicationController

	before_action :authenticate_user!, only: [ :new ]
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
		@average_price_house = Price.average(:price_average_house)
		@average_price_apartment = Price.average(:price_average_apartment)
	end

	



	private

	def price_params
		params.require(:price).permit(:price_min_house, :price_average_house, :price_max_house, :price_min_apartment, :price_average_apartment, :price_max_apartment, :street, :city, :neighborhood, :type_of_street)
	end


end

