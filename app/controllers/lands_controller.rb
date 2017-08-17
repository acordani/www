class LandsController < ApplicationController
	before_action :set_land, only: [:show, :destroy]
	def index
    	@lands = current_user.lands.paginate(:page => params[:page], :per_page => 10)
    	@lands = @lands.where(citysearch: params[:citysearch]) if params["citysearch"].present?
    	@lands = @lands.where(neighborhood: params[:neighborhood]) if params["neighborhood"].present?
    	@lands = @lands.where("surface >= ?", params[:min_surface]) if params["min_surface"].present?
    	@lands = @lands.where("surface <= ?", params[:max_surface]) if params["max_surface"].present?	

    	respond_to do |format|
      		format.html # index.html.erb
      		format.json { render json: Land.all.to_json } # index.js.erb
      		format.js {render :index}
      	end
	end

	def home
	end

	def show
    @followland = Followland.new
		@hash = Gmaps4rails.build_markers(@land) do |land, marker|
      		marker.lat land.latitude
      		marker.lng land.longitude
		end
	end

	def new
	end

	def create
	end

	def destroy
		@land.destroy
      	redirect_to lands_path
	end

	def import
  		Land.import(params[:file])
  		redirect_to lands_path, notice: "Les parcelles ont été ajoutées !!"
  	end

	private

  	def set_land
    	@land = Land.find(params[:id])
  	end

  	def land_params
    	params.require(:land).permit(:number, :surface, :address, :neighborhood_id, :city_id, :citysearch_id, :latitude, :longitude, :file)
  	end
end
