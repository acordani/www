class EstimationsController < ApplicationController
	before_action :set_estimation, only: [:show, :destroy]

	def index
		@estimations = Estimation.all
	end

	def show
		
		
		@samples = Sample.all.sample
		@cities = City.all.sample
		@sales = Sale.all.limit(3)

		@markers = Gmaps4rails.build_markers(@estimation) do |estimation, marker|
      		marker.lat estimation.latitude
      		marker.lng estimation.longitude
		end
		
	end

	def import
  		Estimation.import(params[:file])
  		redirect_to estimations_path, notice: "Les parcelles ont été ajoutées !!"
  	end

  	private

  	def set_estimation
    	@estimation = Estimation.friendly.find(params[:id])
  	end

  	def land_params
    	params.require(:estimation).permit(:number, :surface, :address, :neighborhood_id, :city_id, :citysearch_id, :latitude, :longitude, :file)
  	end

	
end
