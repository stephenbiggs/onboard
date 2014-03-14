Onboard::Application.routes.draw do

# lets set up the index, show, new, create, edit, update, destroy for rooms
resources :rooms, path: "places" do
	# because im placing orders on to rooms
	# this is a nested resource
	resources :orders, only: [:new, :create]
end

# another section to my site, that is the index and show order pages
# new and create are in the nested resource above as they rely on the room
resources :orders, only: [:index, :show]

# lets have a signup section of the site
resources :users

# lets have a log in and log out section to our site
# this is a singular resource because as a user
# we only ever are logged in once NOT multiple times
resource :session

# what is the homepage?
root "rooms#index"


end
