class Order < ActiveRecord::Base

	# relationships
	belongs_to :room
	belongs_to :user

end
