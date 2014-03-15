require 'test_helper'

describe Room do
	
	# i want to load in the data from the fixtures/rooms.yml
	fixtures :rooms

	it "should get a longitude and latitude" do
		# find the room in my fixtures (test data)
		# that doesnt have the latitude and longitude
		@room = rooms(:to_geocode)

		# force room to geocode
		@room.geocode

		# let's check if it's not empty
		@room.latitude.wont_be_nil
		@room.longitude.wont_be_nil

	end

end
