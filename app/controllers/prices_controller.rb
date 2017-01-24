class PricesController < ApplicationController

	before_action :set_price, only: [:show, :destroy]
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
		
		@average_price_house = Price.average(:price_average_house)
		@average_price_apartment = Price.average(:price_average_apartment)

		@marker = Gmaps4rails.build_markers(@price) do |price, marker|
      		marker.lat price.latitude
      		marker.lng price.longitude
		end
	end

	def destroy
		@price.destroy
			redirect_to prices_path
	end

	



	private

	def price_params
		params.require(:price).permit(:price_min_house, :price_average_house, :price_max_house, :price_min_apartment, :price_average_apartment, :price_max_apartment, :street, :city, :neighborhood, :type_of_street, :latitude, :longitude)
	end

	def set_price
		@price = Price.find(params[:id])
	end

end

