class Room < ActiveRecord::Base


	# add relationships between other models


	# validate certain things
	validates :name, presence: true
	validates :address, presence: true
	validates :price_in_pence, presence: true, numericality: { greater_than: 50 }

	# geocoder setup
	geocoded_by :address
	after_validation :geocode

	# add image attachement

end
