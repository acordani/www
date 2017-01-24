class Price < ActiveRecord::Base

	def full_street_address
    	"#{type_of_street} #{street}, #{city}"
  	end

  	geocoded_by :full_street_address
  	after_validation :geocode, if: :full_address_changed?

  	def full_address_changed?
    type_of_street_changed? || street_changed? || city_changed?
  end

end



