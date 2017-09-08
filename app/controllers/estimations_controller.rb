class EstimationsController < ApplicationController

	def show
		
		@land = Land.find(params[:id])
		@samples = Sample.all.sample
		@cities = City.all.sample
		@sales = Sale.all.limit(3)

		@markers = Gmaps4rails.build_markers(@land) do |land, marker|
      		marker.lat land.latitude
      		marker.lng land.longitude
		end
		
	end

	
end
