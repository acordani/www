class Estimation < ApplicationRecord
	belongs_to :sample
	belongs_to :neighborhood
	belongs_to :city
	belongs_to :citysearch

	extend FriendlyId
  	friendly_id :generate_custom_slug, use: :slugged

	def generate_custom_slug
    	"estimation_immobilier #{address}, #{city.name}"
  	end

  

  	def full_street_address
    	[address, city.name].compact.join(', ')
  	end



    	#Import Lands
  	def self.import(file)
	    CSV.foreach(file.path, headers: true) do |row|
	      Estimation.create! row.to_hash
	    end
  	end
end