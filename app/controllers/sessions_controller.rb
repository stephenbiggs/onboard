class SessionsController < ApplicationController

	# this is where i log in and log out of the site

	def new
		# log in form
	end

	def create
		# actually log in
		# try and find a user with the username submitted
		# if there is one AND their password matches
		# sign them in and give them a session
		# if not, show the form again

		# the simple_form has a :session and inside that a :username and a :password
		@username = params[:session][:username]
		@password = params[:session][:password]

		@user = User.find_by_username(@username)

		# if there's no user with that username,
		# maybe check and see if there's a user with that email
		if @user.nil?
			@user = find_by_email(@username)
		end

		if @user.present? and @user.authenticate(@password)
			# we are the right user
			flash[:success] = "You are logged in"
			session[:uid] = @user.id
			redirect_to root_path
		else
			# log in is wrong # dont tell the user what they got wrong or they might try and guess
			flash[:error] = "Your details are incorrect"
			render "new"
		end

	end

	def destroy
		# log out
		# this basically means remove the session from the user
		reset_session
		flash[:success] = "You are now logged out"
		redirect_to root_path
	end



end
