class SitemapController < ApplicationController
  

  def index

    @pages = ['', 'concept', 'cv', 'nl', 'photo', 'realtor']

    @prices = Price.all

    respond_to do |format|
      format.xml
    end
  end

end