require "test_helper"

describe "Rooms integration" do 

# load in the rooms data
fixtures :rooms

	it "should have a title on the show page" do 
		# lets find a room from the data
		@room = rooms(:steer)

		# visit is running in the background
		visit room_path(@room)

		# page has the title on there
		# variable page comes from capybara
		page.text.must_include "Steer"
	end

end