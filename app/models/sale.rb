class Sale < ActiveRecord::Base
	has_attachments :photos, maximum: 5
end
