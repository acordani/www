class SalesController < ApplicationController
	def index
		@sales = Sale.all
	end

	def show
		@sale = Sale.friendly.find(params[:id])
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

	def 

	private

	def sale_params
		params.require(:sale).permit(:title, :price, :description, photos: [])
	end

end
