Onboard::Application.routes.draw do

# lets set up the index, show, new, create, edit, update, destroy for rooms
resources :rooms

# lets have a signup section of the site
resources :users

# lets have a log in and log out section to our site
# this is a singular resource because as a user
# we only ever are logged in once NOT multiple times
resource :session

# what is the homepage?
root "rooms#index"


end
