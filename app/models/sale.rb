class Sale < ApplicationRecord
	has_attachments :photos, maximum: 5

	extend FriendlyId
  	friendly_id :title, use: :slugged
end
