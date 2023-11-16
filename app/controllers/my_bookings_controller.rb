class MyBookingsController < ApplicationController
  def index
    @bookings = current_user.bookings.order(start_date: :desc)
  end
end
