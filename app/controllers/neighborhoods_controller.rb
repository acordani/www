class NeighborhoodsController < ApplicationController

	def show
   @citysearch = Citysearch.find(params[:citysearch_id])
   @neighborhoods = Neighborhood.find(params[:id])
  end

end
