class SalesController < ApplicationController

	before_action :set_sale, only: [:show, :destroy]

	def index
		@sales = Sale.all
	end

	def show
		@markers = Gmaps4rails.build_markers(@sale) do |sale, marker|
    		marker.lat sale.latitude
    		marker.lng sale.longitude
      # marker.infowindow render_to_string(partial: "/sales/map_box", locals: { sale: sale })
    end
		#on va chercher la vente âr son id
	end

	def new
		@sale  = Sale.new
	end

	def create
		@sale = Sale.new(sale_params)
			if @sale.save
				redirect_to sale_path(@sale)
			else
				render :new
			end		
	end

	def destroy
		@sale.destroy
			redirect_to sales_path
	end


	private

	def sale_params
		params.require(:sale).permit(:title, :price, :description, :active, :bedroom, :class_energy, :latitude, :longitude, :address,  photos: [])
	end

	def set_sale
		@sale = Sale.friendly.find(params[:id])
	end

end
