class City < ApplicationRecord
	has_many :neighborhoods, dependent: :destroy
	has_many :lands, dependent: :destroy
	belongs_to :user
	

end
