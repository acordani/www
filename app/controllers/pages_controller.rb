class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]
  before_action :authenticate_user!,  raise: false, only: [:nl]

  def home
  	@contact = Contact.new
  end

  def realtor
  end

  def photo
  end

  def nl
  end

  def plandusite
    @prices = Price.all
  end


end
