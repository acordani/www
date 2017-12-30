class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]
  before_action :authenticate_user!,  raise: false, only: [:nl]

  

  def home
  	@contact = Contact.new
    # @sales = Sale.last(3)
    @sales = Sale.where(phase: 'A VENDRE').or(Sale.where(phase: 'COMPROMIS')).last(3)
    @sold = Sale.where(phase: "VENDU")

    url = "https://maps.googleapis.com/maps/api/place/details/json?placeid=ChIJpznqg-8M5kcRF7J8skRko7c&key=#{ENV['GOOGLE_API_SERVER_KEY']}"
    # http_call = open(url).read
    # response = JSON.parse(http_call, {:symbolize_names => true})
    @location = response = JSON.load(open(url))
    @base = @location["result"]["reviews"]
    @review = @location["result"]
    @avg_rating = @location["result"]["rating"]
    # @location = response[:results]
    
  end

  def realtor
  end

  def photo
  end

  def nl
  end

  def plandusite
    @prices = Price.all
    @sales = Sale.all
    @estimations = Estimation.all
  end

  def agenceimmobiliere
    @sales = Sale.all.limit(3)
  end

  def estimationgratuite
    @contact = Contact.new
    @estimations = Estimation.all
    @random = Estimation.all.shuffle[0..30]
    
  end


end
