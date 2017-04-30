class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]
  skip_before_action :authenticate_user!,  raise: false, only: [ :home ]

  def home
  	@contact = Contact.new
  end

  def realtor
  end

  def photo
  end


end
