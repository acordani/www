class Sale < ApplicationRecord

	geocoded_by :address
  	after_validation :geocode, if: :address_changed?
  	
	has_attachments :photos, maximum: 10

	HEATING = %w(Gaz Electrique Sol Fioul)
	PHASE = ["A VENDRE", "VENDU", "COMPROMIS"]
	

	extend FriendlyId
  	friendly_id :title, use: :slugged

  	has_many :link_partners, dependent: :destroy
  	has_many :partners, through: :link_partners

end
