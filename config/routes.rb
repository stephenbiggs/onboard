Onboard::Application.routes.draw do

# lets set up the index, show, new, create, edit, update, destroy for rooms
resources :rooms

# lets have a signup section of the site
resources :users

# what is the homepage?
root "rooms#index"


end
