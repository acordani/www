class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]
  before_action :authenticate_user!,  raise: false, only: [:nl]

  

  def home
  	@contact = Contact.new
    @sales = Sale.last(3)

    url = "https://maps.googleapis.com/maps/api/place/details/json?placeid=ChIJpznqg-8M5kcRF7J8skRko7c&key=AIzaSyCQREarS7azb8LQAkkyhbd8wlDO2mk1RQA"
    # http_call = open(url).read
    # response = JSON.parse(http_call, {:symbolize_names => true})
    @location = response = JSON.load(open(url))
    @base = @location["result"]["reviews"]
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
