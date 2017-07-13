
require "static"

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  


	def default_url_options
  		{ host: ENV['HOST'] || 'localhost:3000' }
	end


	def load_static
    	Static.load
  	end

  	def content_not_found
      render file: "#{Rails.root}/public/404", layout: true
    end
  end

  

