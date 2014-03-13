Onboard::Application.routes.draw do

# lets set up the index, show, new, create, edit, update, destroy for rooms
resources :rooms

# what is the homepage?
root "rooms#index"


end
