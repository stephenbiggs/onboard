class OrderMailer < ActionMailer::Base
  default from: "admin@onboard.com"

  # i can call this method anything i want
  # the (order) bit is us sending through the order to the emails
  def new_order(order)
  	# lets make the order available in the view
  	@order = order
  	@room = @order.room
  	@user = @room.user


  	mail to: @user.email, subject: "You have a new order"
  end

end
