class SalesController < ApplicationController

	before_action :set_sale, only: [:show, :destroy, :edit, :update]

	def index
		@all_sales = Sale.all
		@sales = Sale.where(phase: 'A VENDRE').or(Sale.where(phase: 'COMPROMIS')).or(Sale.where(phase: 'VENDU'))
		@partner = Partner.new
		@link_partner = LinkPartner.new
	end

	def show
		@partner = Partner.new
		@link_partner = LinkPartner.new
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
		params.require(:sale).permit(
			:title,
			:price, 
			:description, 
			:active, 
			:bedroom, 
			:living, 
			:class_energy, 
			:latitude, 
			:longitude, 
			:address, 
			:zip_code, 
			:number_class_energy, 
			:gaz_serre, 
			:number_gaz_serre, 
			:city, 
			:taxe,
  			:exposition,
  			:heating,
  			:phase,
  			:fees,
  			:seller_buyer,
			photos: []
			)
	end

	def set_sale
		@sale = Sale.friendly.find(params[:id])
	end

end
