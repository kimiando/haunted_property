class MyBookingsController < ApplicationController
  def index
    @user = User.all
    @user = current_user

    @bookings = current_user.bookings
    # @bookings = Bookings.find[:id]
    # @bookings.user = current_user
  end
end
