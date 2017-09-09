class SitemapController < ApplicationController
  

  def index

    @pages = ['', 'concept', 'cv', 'nl', 'photo', 'realtor', 'plandusite', 'agenceimmobiliere']

    @prices = Price.all

    @sales = Sale.all

    respond_to do |format|
      format.xml
    end
  end

end