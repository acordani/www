class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]
  before_action :authenticate_user!,  raise: false, only: [:nl]

  def home
  	@contact = Contact.new
    @sales = Sale.all
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
  end


end
