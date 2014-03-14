class RoomsController < ApplicationController


# i want to make sure that we are logged in
# on the new, create, edit, update and destroy
# so before each one runs, do something to check
before_action :make_sure_logged_in, only: [:new, :create, :edit, :update, :destroy]

	def index
			# show a list of all the rooms
			@rooms = Room.all
	end


	def show
			# individual room page
			@room = Room.find(params[:id])
	end


	def new
			# add a room form
			@room = current_user.rooms.new
	end


	def create
			# enter the room into the database
			@room = current_user.rooms.new(room_params)

			if @room.save
					flash[:success] = "Your room has been added"
					redirect_to room_path(@room)
			else
					render "new"
			end
	end


	def edit
		# edit the form
		@room = current_user.rooms.find(params[:id])
	end

	def update
		# actually update the database
		#@room = Room.find(params[:id])
		@room = current_user.rooms.find(params[:id])

		if @room.update(room_params)
			flash[:success] = "Your room has been updated"
			redirect_to room_path(@room)
		else
			render "edit"
		end
	end

	def destroy
		# # actually deleted from the database
		#@room = Room.find(params[:id])
		@room = current_user.rooms.find(params[:id])
		@room.destroy
		flash[:success] = "Your room has been deleted"
		redirect_to root_path
	end







	def room_params
			# this whitelists our form data
			params.require(:room).permit(:name, :address, :number_of_beds, :price_in_pence, :is_available)
	end

end
