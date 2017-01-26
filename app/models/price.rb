class Price < ActiveRecord::Base

	def full_street_address
    	"#{address} #{zip_code}"
  	end

  	extend FriendlyId
  	friendly_id :generate_custom_slug, use: :slugged

  	geocoded_by :full_street_address
  	after_validation :geocode, if: :full_address_changed?

  	def full_address_changed?
    address? || zip_code_changed?
  end

  def generate_custom_slug
    "prix_immobilier #{address} #{zip_code} #{city}"
  end

end



