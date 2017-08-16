class Partner < ApplicationRecord
	has_many :link_partners, dependent: :destroy
	has_many :sales, through: :link_partners

	has_attachment :photo
end
