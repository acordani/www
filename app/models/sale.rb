class Sale < ApplicationRecord

	geocoded_by :address
  	after_validation :geocode, if: :address_changed?
  	
	has_attachments :photos, maximum: 5
	

	extend FriendlyId
  	friendly_id :title, use: :slugged
end
