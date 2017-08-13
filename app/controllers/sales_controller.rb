class SalesController < ApplicationController

	before_action :set_sale, only: [:show, :destroy, :edit, :update]

	def index
		@sales = Sale.all
	end

	def show
		
    	@markers = Gmaps4rails.build_markers(@sale) do |sale, marker|
      		marker.lat sale.latitude + 0.001
      		marker.lng sale.longitude + 0.001
		end
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

	def edit
	end

	def update
		@sale.update(sale_params)
		redirect_to sale_path(@sale)
	end



	def destroy
		@sale.destroy
			redirect_to sales_path
	end


	private

	def sale_params
		params.require(:sale).permit(:title, :price, :description, :active, :bedroom, :living, :class_energy, :latitude, :longitude, :address, :zip_code, :number_class_energy, :gaz_serre, :number_gaz_serre, :city,  photos: [])
	end

	def set_sale
		@sale = Sale.friendly.find(params[:id])
	end

end
