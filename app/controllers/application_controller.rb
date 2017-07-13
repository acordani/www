
require "static"

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, except: :render_404

  rescue_from ActionController::RoutingError, with: :render_404
  rescue_from ActionController::UnknownFormat, with: :render_404


	def default_url_options
  		{ host: ENV['HOST'] || 'localhost:3000' }
	end


	def load_static
    	Static.load
  	end

  	def render_404
    respond_to do |format|
      format.html { render 'pages/404', status: :not_found }
      format.all { render text: 'Not Found', status: :not_found }
    end
  end

  
end
